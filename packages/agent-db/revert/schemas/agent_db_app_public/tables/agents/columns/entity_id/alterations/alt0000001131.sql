-- Revert: schemas/agent_db_app_public/tables/agents/columns/entity_id/alterations/alt0000001131


ALTER TABLE agent_db_app_public.agents 
  ALTER COLUMN entity_id DROP NOT NULL;


