-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/is_anonymous/column


ALTER TABLE agentic_db_auth_private.sessions 
  DROP COLUMN is_anonymous RESTRICT;


