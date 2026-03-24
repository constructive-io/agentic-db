-- Revert: schemas/agentic_db_auth_private/tables/session_credentials/columns/session_id/column


ALTER TABLE "agentic_db_auth_private".session_credentials 
  DROP COLUMN session_id RESTRICT;


