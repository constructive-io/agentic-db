-- Revert: schemas/constructive-auth-public/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-auth-public" REVOKE ALL ON FUNCTIONS FROM authenticated;


