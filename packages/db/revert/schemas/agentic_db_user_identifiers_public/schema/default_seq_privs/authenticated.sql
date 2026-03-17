-- Revert: schemas/agentic_db_user_identifiers_public/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_user_identifiers_public" REVOKE USAGE ON SEQUENCES FROM authenticated;


