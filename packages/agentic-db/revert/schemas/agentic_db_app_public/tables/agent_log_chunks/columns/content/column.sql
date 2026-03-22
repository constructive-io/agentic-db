-- Revert: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".agent_log_chunks 
  DROP COLUMN content RESTRICT;


