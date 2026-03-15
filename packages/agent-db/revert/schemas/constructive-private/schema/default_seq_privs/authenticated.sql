-- Revert: schemas/constructive-private/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-private" REVOKE USAGE ON SEQUENCES FROM authenticated;


