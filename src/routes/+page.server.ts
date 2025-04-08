import { env } from "$env/dynamic/private";

export const load = async () => {
    return {
        DATABASE_URL: env.DATABASE_URL
    };
};
