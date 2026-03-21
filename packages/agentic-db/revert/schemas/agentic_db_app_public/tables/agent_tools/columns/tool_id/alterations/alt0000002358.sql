-- Revert: schemas/agentic_db_app_public/tables/agent_tools/columns/tool_id/alterations/alt0000002358


ALTER TABLE "agentic_db_app_public".agent_tools 
  ALTER COLUMN tool_id DROP NOT NULL;


