-- Revert: schemas/agent_db_app_public/tables/agent_tools/columns/tool_id/alterations/alt0000004474


ALTER TABLE "agent_db_app_public".agent_tools 
  ALTER COLUMN tool_id DROP NOT NULL;


