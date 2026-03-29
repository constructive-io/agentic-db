-- Revert: schemas/agentic_db_auth_private/tables/session_credentials/columns/session_id/alterations/alt0000004849


ALTER TABLE agentic_db_auth_private.session_credentials 
  ALTER COLUMN session_id DROP NOT NULL;


