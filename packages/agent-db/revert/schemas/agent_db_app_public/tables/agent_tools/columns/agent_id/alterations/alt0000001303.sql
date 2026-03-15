-- Revert: schemas/agent_db_app_public/tables/agent_tools/columns/agent_id/alterations/alt0000001303


ALTER TABLE agent_db_app_public.agent_tools 
  ALTER COLUMN agent_id DROP NOT NULL;


