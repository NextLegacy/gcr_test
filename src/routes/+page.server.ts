import { DATABASE_URL } from "$env/static/private";

export const load = async () => {
    return {
        DATABASE_URL
    };
};
