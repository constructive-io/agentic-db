-- Revert: schemas/agent_db_app_public/tables/agent_tools/columns/id/alterations/alt0000001305


ALTER TABLE agent_db_app_public.agent_tools 
  ALTER COLUMN id DROP NOT NULL;


