-- Revert: schemas/agent_db_app_public/tables/agents/columns/embedding/column


ALTER TABLE agent_db_app_public.agents 
  DROP COLUMN embedding RESTRICT;


