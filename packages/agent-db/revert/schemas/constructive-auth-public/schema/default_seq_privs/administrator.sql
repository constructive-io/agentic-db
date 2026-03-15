-- Revert: schemas/constructive-auth-public/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-auth-public" REVOKE USAGE ON SEQUENCES FROM administrator;


