-- Revert: schemas/constructive-metaschema-modules-public/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-metaschema-modules-public" REVOKE ALL ON FUNCTIONS FROM authenticated;


