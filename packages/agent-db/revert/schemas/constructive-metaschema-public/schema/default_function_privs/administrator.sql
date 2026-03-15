-- Revert: schemas/constructive-metaschema-public/schema/default_function_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-metaschema-public" REVOKE ALL ON FUNCTIONS FROM administrator;


