-- Revert: schemas/agent_db_app_public/tables/agent_tools/constraints/agent_tools_tool_id_fkey/constraint


ALTER TABLE agent_db_app_public.agent_tools 
  DROP CONSTRAINT agent_tools_tool_id_fkey;


