-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".agent_logs 
  DROP COLUMN embedding_text RESTRICT;


