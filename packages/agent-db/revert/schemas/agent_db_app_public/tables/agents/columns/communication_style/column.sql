-- Revert: schemas/agent_db_app_public/tables/agents/columns/communication_style/column


ALTER TABLE agent_db_app_public.agents 
  DROP COLUMN communication_style RESTRICT;


