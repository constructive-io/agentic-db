-- Revert: schemas/agentic_db_app_public/tables/agent_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.agent_chunks 
  DROP COLUMN embedding RESTRICT;


