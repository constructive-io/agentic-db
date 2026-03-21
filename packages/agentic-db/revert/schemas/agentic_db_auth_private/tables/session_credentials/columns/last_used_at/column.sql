-- Revert: schemas/agentic_db_auth_private/tables/session_credentials/columns/last_used_at/column


ALTER TABLE agentic_db_auth_private.session_credentials 
  DROP COLUMN last_used_at RESTRICT;


