-- Revert: schemas/constructive-public/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-public" REVOKE ALL ON TABLES FROM administrator;


