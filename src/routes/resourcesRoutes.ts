import express from "express";
import {
  createResource,
  getResources,
} from "../controllers/resourceController";

const resourceRouter = express.Router();

// -> to controllers
resourceRouter.get("/", getResources);
resourceRouter.post("/", createResource);
// router.get("/:id", getSingleResource)
// router.put("/:id", updateResource)
// router.delete("/:id", deleteResource)

export default resourceRouter;
