import { Router } from "express";
import authRouter from "./authRoutes";
import userRouter from "./userRoutes";
import adminRouter from "./adminRoutes";
import resourceRouter from "./resourcesRoutes";

const router = Router();
router.get("/", (req, res) => {
  res.send(`
      <h1>Yipee:</h1>
      <ul>
        <li><a href="/auth">/auth</a></li>
        <li><a href="/user">/user</a></li>
        <li><a href="/admin">/admin</a></li>
        <li><a href="/resources">/resources</a></li>
      </ul>
    `);
});

router.use("/auth", authRouter);
router.use("/user", userRouter);
router.use("/admin", adminRouter);
router.use("/resources", resourceRouter);

export default router;
