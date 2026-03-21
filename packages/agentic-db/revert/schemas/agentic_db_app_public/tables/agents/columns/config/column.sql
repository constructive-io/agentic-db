-- Revert: schemas/agentic_db_app_public/tables/agents/columns/config/column


ALTER TABLE agentic_db_app_public.agents 
  DROP COLUMN config RESTRICT;


