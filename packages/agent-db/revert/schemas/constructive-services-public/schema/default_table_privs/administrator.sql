-- Revert: schemas/constructive-services-public/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-services-public" REVOKE ALL ON TABLES FROM administrator;


