-- Revert: schemas/agentic_db_app_public/tables/agents/columns/backstory/column


ALTER TABLE agentic_db_app_public.agents 
  DROP COLUMN backstory RESTRICT;


