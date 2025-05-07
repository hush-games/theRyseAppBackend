import express from "express";

const adminRouter = express.Router();

adminRouter.get("/", (req, res) => {
  res.json({ msg: "admin route" });
});

// -> to controllers
// router.get("/users", getAllUsers) // with non-public info
// router.get("/users/:id", getUser) // with non-public info
// router.post("/user:id", updateUser)
// router.post("/resource:id", updateResource)
// router.delete("/user:id", updateUser)
// router.delete("/resource:id", updateResource)

export default adminRouter;
