-- Revert: schemas/agentic_db_app_public/tables/agents/columns/status/column


ALTER TABLE agentic_db_app_public.agents 
  DROP COLUMN status RESTRICT;


