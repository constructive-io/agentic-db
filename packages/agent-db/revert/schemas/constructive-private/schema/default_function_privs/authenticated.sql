-- Revert: schemas/constructive-private/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-private" REVOKE ALL ON FUNCTIONS FROM authenticated;


