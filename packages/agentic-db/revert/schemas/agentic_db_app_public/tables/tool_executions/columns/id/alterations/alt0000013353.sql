-- Revert: schemas/agentic_db_app_public/tables/tool_executions/columns/id/alterations/alt0000013353


ALTER TABLE agentic_db_app_public.tool_executions 
  ALTER COLUMN id DROP NOT NULL;


