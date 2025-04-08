import { env } from "$env/dynamic/private";

console.log("DATABASE_URL", env.DATABASE_URL);
export const DATABASE_URL = env.DATABASE_URL;
