-- Revert: schemas/agentic_db_app_public/tables/agents/columns/embedding/column


ALTER TABLE agentic_db_app_public.agents 
  DROP COLUMN embedding RESTRICT;


