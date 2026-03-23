-- Revert: schemas/agentic_db_app_public/tables/tool_executions/columns/created_at/alterations/alt0000003163


ALTER TABLE agentic_db_app_public.tool_executions 
  ALTER COLUMN created_at DROP NOT NULL;


