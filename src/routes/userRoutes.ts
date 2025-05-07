import express from "express";

const userRouter = express.Router();

userRouter.get("/", (req, res) => {
  res.json({ msg: "users route" });
});

// -> to controllers
// router.get("/me",  getMe);
// router.post("/me",  updateMe);
// router.delete("/me",  deleteMe);
// router.get("/:id", getUserById); // Public profile

export default userRouter;
