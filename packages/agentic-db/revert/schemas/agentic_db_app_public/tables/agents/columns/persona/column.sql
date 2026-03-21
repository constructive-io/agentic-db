-- Revert: schemas/agentic_db_app_public/tables/agents/columns/persona/column


ALTER TABLE agentic_db_app_public.agents 
  DROP COLUMN persona RESTRICT;


