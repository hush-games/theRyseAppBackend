import express from "express";
import { signUpUser } from "../controllers/authController";

const router = express.Router();

router.get("/", (req, res) => {
  res.json({ msg: "auth route" });
});

// -> to controllers
// router.get("/me", getCurrentUser)
router.post("/signup", signUpUser);
// router.post("/login", loginUser)
// router.post("/logout", logoutUser)

export default router;
