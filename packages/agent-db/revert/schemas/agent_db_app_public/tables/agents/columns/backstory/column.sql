-- Revert: schemas/agent_db_app_public/tables/agents/columns/backstory/column


ALTER TABLE agent_db_app_public.agents 
  DROP COLUMN backstory RESTRICT;


