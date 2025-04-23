import express from "express";
import { createResource, createUser } from "../controllers/adminController";

const router = express.Router();

router.post("/create-user", createUser);
router.post("/create-resource", createResource);

export default router;
