import { createClient } from "@supabase/supabase-js";
import { Database } from "../src/types/database.types";
import dotenv from "dotenv";
dotenv.config();

const supabaseUrl = "http://127.0.0.1:54321";
const supabaseKey = process.env.SUPABASE_ANON_KEY as string;

if (!supabaseUrl || !supabaseKey) {
  throw new Error("Missing Supabase environment variables");
}

export const supabaseClient = createClient<Database>(supabaseUrl, supabaseKey);

export const getResourcesService = async () => {
  const { data, error } = await supabaseClient.from("resources").select("*");
  if (error) throw new Error(error.message);
  console.log("=== DATA: Resources ===");
  console.log(data);
};
getResourcesService();
