-- Revert: schemas/constructive-auth-private/schema/default_function_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-auth-private" REVOKE ALL ON FUNCTIONS FROM administrator;


