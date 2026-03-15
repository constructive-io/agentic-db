-- Revert: schemas/constructive-metaschema-public/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-metaschema-public" REVOKE ALL ON FUNCTIONS FROM authenticated;


