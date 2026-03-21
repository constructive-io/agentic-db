-- Revert: schemas/agentic_db_app_public/tables/agents/columns/preferred_model/column


ALTER TABLE agentic_db_app_public.agents 
  DROP COLUMN preferred_model RESTRICT;


