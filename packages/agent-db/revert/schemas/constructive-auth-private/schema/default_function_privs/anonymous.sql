-- Revert: schemas/constructive-auth-private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-auth-private" REVOKE ALL ON FUNCTIONS FROM anonymous;


