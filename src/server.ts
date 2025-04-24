import dotenv from "dotenv";
dotenv.config();

import express, { Request, Response } from "express";
import userRoutes from "./routes/userRoutes";
import adminRoutes from "./routes/adminRoutes";

const app = express();
app.use(express.json());

app.get("/", (req: Request, res: Response) => {
  res.send("yippee");
});

app.use("/api/user", userRoutes);
app.use("/api/admin", adminRoutes);

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server connected at http://localhost:${PORT}`);
});
