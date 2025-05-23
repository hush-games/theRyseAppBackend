import dotenv from "dotenv";
dotenv.config();
import express from "express";
import router from "./routes";

const app = express();
app.use(express.json());

app.use(router);

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server connected at http://localhost:${PORT}`);
});
