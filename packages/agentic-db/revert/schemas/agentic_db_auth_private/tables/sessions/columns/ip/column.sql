-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/ip/column


ALTER TABLE agentic_db_auth_private.sessions 
  DROP COLUMN ip RESTRICT;


