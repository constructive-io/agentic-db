-- Revert: schemas/agentic_db_app_public/tables/agents/columns/name/column


ALTER TABLE agentic_db_app_public.agents 
  DROP COLUMN name RESTRICT;


