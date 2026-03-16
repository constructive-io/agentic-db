-- Revert: schemas/agentic_db_auth_private/tables/session_credentials/columns/id/column


ALTER TABLE "agentic_db_auth_private".session_credentials 
  DROP COLUMN id RESTRICT;


