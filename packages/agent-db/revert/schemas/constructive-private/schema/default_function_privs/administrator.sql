-- Revert: schemas/constructive-private/schema/default_function_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-private" REVOKE ALL ON FUNCTIONS FROM administrator;


