-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.agent_logs 
  DROP COLUMN embedding_stale RESTRICT;


