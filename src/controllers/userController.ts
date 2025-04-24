import { Request, Response } from "express";
import { getResourcesService } from "../services/resourceService";

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
