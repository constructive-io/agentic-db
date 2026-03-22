-- Revert: schemas/agentic_db_auth_private/tables/session_credentials/columns/secret_hash/alterations/alt0000005311


ALTER TABLE agentic_db_auth_private.session_credentials 
  ALTER COLUMN secret_hash DROP NOT NULL;


