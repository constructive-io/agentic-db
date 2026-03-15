-- Revert: schemas/constructive-services-public/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-services-public" REVOKE USAGE ON SEQUENCES FROM authenticated;


