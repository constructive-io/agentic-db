-- Revert: schemas/constructive-public/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-public" REVOKE USAGE ON SEQUENCES FROM authenticated;


