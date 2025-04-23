import express from "express";
import { createResource, createUser } from "../controllers/adminController";

const router = express.Router();

router.post("/user", createUser);
router.post("/resource", createResource);

export default router;
