-- Revert: schemas/constructive-auth-private/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-auth-private" REVOKE USAGE ON SEQUENCES FROM administrator;


