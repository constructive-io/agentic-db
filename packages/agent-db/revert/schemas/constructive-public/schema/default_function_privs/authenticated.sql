-- Revert: schemas/constructive-public/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-public" REVOKE ALL ON FUNCTIONS FROM authenticated;


