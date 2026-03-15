-- Revert: schemas/constructive-private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-private" REVOKE ALL ON FUNCTIONS FROM anonymous;


