-- Revert: schemas/agent_db_app_public/tables/agents/columns/preferred_model/column


ALTER TABLE agent_db_app_public.agents 
  DROP COLUMN preferred_model RESTRICT;


