-- Revert: schemas/constructive-metaschema-modules-public/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-metaschema-modules-public" REVOKE ALL ON TABLES FROM administrator;


