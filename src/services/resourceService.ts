import { supabaseAdmin } from "../config/supabaseAdmin";
import { supabaseClient } from "../config/supabaseClient";
import { Database } from "../types/database.types";

type ResourceInsert = Database["public"]["Tables"]["resources"]["Insert"];

export const getResourcesService = async () => {
  const { data, error } = await supabaseClient.from("resources").select("*");
  if (error) throw new Error(error.message);
  return data;
};

export const createResourceService = async (resourceData: ResourceInsert) => {
  const { data, error } = await supabaseAdmin
    .from("resources")
    .insert(resourceData)
    .single();

  if (error) {
    throw new Error(error.message);
  }
  return data;
};
