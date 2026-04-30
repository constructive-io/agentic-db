-- Revert: schemas/agentic_db_public/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_public" REVOKE USAGE ON SEQUENCES FROM authenticated;


