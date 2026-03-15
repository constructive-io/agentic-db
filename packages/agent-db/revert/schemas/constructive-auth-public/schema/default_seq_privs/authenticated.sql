-- Revert: schemas/constructive-auth-public/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-auth-public" REVOKE USAGE ON SEQUENCES FROM authenticated;


