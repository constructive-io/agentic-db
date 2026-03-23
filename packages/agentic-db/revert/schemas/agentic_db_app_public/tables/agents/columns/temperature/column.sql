-- Revert: schemas/agentic_db_app_public/tables/agents/columns/temperature/column


ALTER TABLE agentic_db_app_public.agents 
  DROP COLUMN temperature RESTRICT;


