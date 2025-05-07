import { Request, Response } from "express";
import { signUpUserService } from "../services/authService";

export const signUpUser = async (
  req: Request,
  res: Response,
): Promise<void> => {
  try {
    const { email, password, role } = req.body;

    const user = await signUpUserService(email, password, role);

    res.status(201).json({ message: "User created with role", user });
  } catch (error) {
    if (error instanceof Error) {
      res.status(500).json({ error: error.message });
    } else {
      res.status(500).json({ error: "Internal server error" });
    }
  }
};
