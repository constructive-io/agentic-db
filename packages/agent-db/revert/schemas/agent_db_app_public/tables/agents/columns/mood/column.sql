-- Revert: schemas/agent_db_app_public/tables/agents/columns/mood/column


ALTER TABLE agent_db_app_public.agents 
  DROP COLUMN mood RESTRICT;


