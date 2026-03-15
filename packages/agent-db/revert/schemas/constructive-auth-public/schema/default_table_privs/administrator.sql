-- Revert: schemas/constructive-auth-public/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-auth-public" REVOKE ALL ON TABLES FROM administrator;


