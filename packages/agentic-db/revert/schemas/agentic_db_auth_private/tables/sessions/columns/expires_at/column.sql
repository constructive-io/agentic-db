-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/expires_at/column


ALTER TABLE agentic_db_auth_private.sessions 
  DROP COLUMN expires_at RESTRICT;


