-- Revert: schemas/constructive-auth-private/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-auth-private" REVOKE ALL ON TABLES FROM administrator;


