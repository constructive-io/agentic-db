-- Revert: schemas/agentic_db_app_public/tables/tool_executions/columns/status/alterations/alt0000001504




ALTER TABLE "agentic_db_app_public".tool_executions 
    ALTER COLUMN status DROP DEFAULT;



