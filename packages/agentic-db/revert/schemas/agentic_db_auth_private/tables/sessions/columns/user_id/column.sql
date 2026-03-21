-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/user_id/column


ALTER TABLE agentic_db_auth_private.sessions 
  DROP COLUMN user_id RESTRICT;


