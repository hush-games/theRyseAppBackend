import { supabaseAdmin } from "../config/supabaseAdmin";

export const signUpUserService = async (
  email: string,
  password: string,
  role: string,
) => {
  const { data, error: authError } = await supabaseAdmin.auth.admin.createUser({
    email,
    password,
  });

  if (authError) {
    throw new Error(authError.message);
  }

  const { error: profileError } = await supabaseAdmin
    .from("profiles")
    .insert({ id: data.user.id, role });

  if (profileError) {
    throw new Error(profileError.message);
  }

  return data.user;
};
