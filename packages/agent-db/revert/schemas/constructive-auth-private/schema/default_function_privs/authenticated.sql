-- Revert: schemas/constructive-auth-private/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-auth-private" REVOKE ALL ON FUNCTIONS FROM authenticated;


