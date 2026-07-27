-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/embedding_updated_at/column


ALTER TABLE agentic_db_app_public.agent_logs 
  DROP COLUMN embedding_updated_at RESTRICT;


