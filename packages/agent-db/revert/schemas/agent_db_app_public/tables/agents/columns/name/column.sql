-- Revert: schemas/agent_db_app_public/tables/agents/columns/name/column


ALTER TABLE agent_db_app_public.agents 
  DROP COLUMN name RESTRICT;


