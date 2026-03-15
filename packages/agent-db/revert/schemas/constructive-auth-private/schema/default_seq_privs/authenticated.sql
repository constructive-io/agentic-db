-- Revert: schemas/constructive-auth-private/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-auth-private" REVOKE USAGE ON SEQUENCES FROM authenticated;


