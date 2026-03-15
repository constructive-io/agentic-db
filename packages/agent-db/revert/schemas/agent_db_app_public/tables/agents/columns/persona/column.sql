-- Revert: schemas/agent_db_app_public/tables/agents/columns/persona/column


ALTER TABLE agent_db_app_public.agents 
  DROP COLUMN persona RESTRICT;


