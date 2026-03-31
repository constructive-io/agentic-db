-- Revert: schemas/agentic_db_auth_private/tables/session_credentials/columns/created_at/alterations/alt0000002764


ALTER TABLE agentic_db_auth_private.session_credentials 
  ALTER COLUMN created_at DROP DEFAULT;


