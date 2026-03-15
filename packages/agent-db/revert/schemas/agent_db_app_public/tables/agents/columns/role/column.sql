-- Revert: schemas/agent_db_app_public/tables/agents/columns/role/column


ALTER TABLE agent_db_app_public.agents 
  DROP COLUMN role RESTRICT;


