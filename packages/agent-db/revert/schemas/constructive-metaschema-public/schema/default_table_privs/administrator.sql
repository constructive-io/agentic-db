-- Revert: schemas/constructive-metaschema-public/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-metaschema-public" REVOKE ALL ON TABLES FROM administrator;


