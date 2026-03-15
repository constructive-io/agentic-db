-- Revert: schemas/constructive-public/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-public" REVOKE ALL ON FUNCTIONS FROM anonymous;


