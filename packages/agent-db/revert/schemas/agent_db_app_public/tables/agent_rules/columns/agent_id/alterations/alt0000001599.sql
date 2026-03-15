-- Revert: schemas/agent_db_app_public/tables/agent_rules/columns/agent_id/alterations/alt0000001599


ALTER TABLE agent_db_app_public.agent_rules 
  ALTER COLUMN agent_id DROP NOT NULL;


