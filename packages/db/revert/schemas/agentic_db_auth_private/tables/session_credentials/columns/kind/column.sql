-- Revert: schemas/agentic_db_auth_private/tables/session_credentials/columns/kind/column


ALTER TABLE "agentic_db_auth_private".session_credentials 
  DROP COLUMN kind RESTRICT;


