-- Revert: schemas/constructive-private/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-private" REVOKE ALL ON TABLES FROM administrator;


