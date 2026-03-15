-- Revert: schemas/agent_db_app_public/tables/agents/columns/capabilities/column


ALTER TABLE agent_db_app_public.agents 
  DROP COLUMN capabilities RESTRICT;


