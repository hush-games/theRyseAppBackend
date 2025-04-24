import { Request, Response } from "express";
import { createUserService } from "../services/userService";
import { createResourceService } from "../services/resourceService";
import { Database } from "../types/database.types";

type ResourceInsert = Database["public"]["Tables"]["resources"]["Insert"];

export const createUser = async (
  req: Request,
  res: Response,
): Promise<void> => {
  try {
    const { email, password, role } = req.body;

    const user = await createUserService(email, password, role);

    res.status(201).json({ message: "User created with role", user });
  } catch (error) {
    if (error instanceof Error) {
      res.status(500).json({ error: error.message });
    } else {
      res.status(500).json({ error: "Internal server error" });
    }
  }
};

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
