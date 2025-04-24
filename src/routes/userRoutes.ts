import express from "express";
import { getResources } from "../controllers/userController";

const router = express.Router();

router.get("/resources", getResources);

export default router;
