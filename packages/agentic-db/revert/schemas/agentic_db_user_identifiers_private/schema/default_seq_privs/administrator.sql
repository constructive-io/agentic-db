-- Revert: schemas/agentic_db_user_identifiers_private/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_user_identifiers_private REVOKE USAGE ON SEQUENCES FROM administrator;


