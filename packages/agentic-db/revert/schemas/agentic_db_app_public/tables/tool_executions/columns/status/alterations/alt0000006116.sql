-- Revert: schemas/agentic_db_app_public/tables/tool_executions/columns/status/alterations/alt0000006116




ALTER TABLE agentic_db_app_public.tool_executions 
    ALTER COLUMN status DROP DEFAULT;



