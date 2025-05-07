import { Request, Response } from "express";
import {
  createResourceService,
  getResourcesService,
} from "../services/resourceService";
import { Database } from "../types/database.types";

type ResourceInsert = Database["public"]["Tables"]["resources"]["Insert"];

export const createResource = async (
  req: Request,
  res: Response,
): Promise<void> => {
  try {
    const { title, content, created_by } = req.body;

    const resourceData: ResourceInsert = {
      title,
      content,
      created_by,
    };

    const newResource = await createResourceService(resourceData);

    res
      .status(201)
      .json({ message: "Resource created", resource: newResource });
  } catch (error) {
    if (error instanceof Error) {
      res.status(500).json({ error: error.message });
    } else {
      res.status(500).json({ error: "Internal server error" });
    }
  }
};

export const getResources = async (
  _req: Request,
  res: Response,
): Promise<void> => {
  try {
    const resources = await getResourcesService();

    res.json(resources);
  } catch (error) {
    if (error instanceof Error) {
      res.status(500).json({ error: error.message });
    } else {
      res.status(500).json({ error: "Internal server error" });
    }
  }
};
