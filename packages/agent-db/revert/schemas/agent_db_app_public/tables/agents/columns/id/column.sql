-- Revert: schemas/agent_db_app_public/tables/agents/columns/id/column


ALTER TABLE agent_db_app_public.agents 
  DROP COLUMN id RESTRICT;


