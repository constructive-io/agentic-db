-- Revert: schemas/constructive-private/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-private" REVOKE USAGE ON SEQUENCES FROM administrator;


