-- Revert: schemas/agent_db_app_public/tables/agents/columns/status/column


ALTER TABLE agent_db_app_public.agents 
  DROP COLUMN status RESTRICT;


