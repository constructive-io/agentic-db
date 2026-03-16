-- Revert: schemas/agent_db_app_public/tables/session_archives/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".session_archives 
  DROP COLUMN embedding_text RESTRICT;


