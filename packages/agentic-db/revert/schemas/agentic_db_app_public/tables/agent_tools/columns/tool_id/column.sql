-- Revert: schemas/agentic_db_app_public/tables/agent_tools/columns/tool_id/column


ALTER TABLE agentic_db_app_public.agent_tools 
  DROP COLUMN tool_id RESTRICT;


