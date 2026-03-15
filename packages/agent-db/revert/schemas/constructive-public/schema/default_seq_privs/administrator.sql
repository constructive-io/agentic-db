-- Revert: schemas/constructive-public/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-public" REVOKE USAGE ON SEQUENCES FROM administrator;


