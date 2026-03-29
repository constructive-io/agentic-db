-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/origin/column


ALTER TABLE agentic_db_auth_private.sessions 
  DROP COLUMN origin RESTRICT;


