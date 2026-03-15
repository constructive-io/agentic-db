-- Revert: schemas/agent_db_app_public/tables/agent_tools/columns/id/column


ALTER TABLE agent_db_app_public.agent_tools 
  DROP COLUMN id RESTRICT;


