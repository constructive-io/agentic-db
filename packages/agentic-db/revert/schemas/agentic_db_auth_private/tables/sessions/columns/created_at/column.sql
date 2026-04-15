-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/created_at/column


ALTER TABLE agentic_db_auth_private.sessions 
  DROP COLUMN created_at RESTRICT;


