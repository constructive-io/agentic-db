-- Revert: schemas/agentic_db_app_public/tables/tool_executions/columns/tool_definition_id/alterations/alt0000003162


ALTER TABLE agentic_db_app_public.tool_executions 
  ALTER COLUMN tool_definition_id DROP NOT NULL;


