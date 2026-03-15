-- Revert: schemas/constructive-public/schema/default_function_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-public" REVOKE ALL ON FUNCTIONS FROM administrator;


