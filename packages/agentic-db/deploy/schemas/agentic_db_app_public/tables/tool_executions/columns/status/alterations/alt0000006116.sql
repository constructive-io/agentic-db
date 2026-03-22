-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/columns/status/alterations/alt0000006116
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/tool_executions/columns/output/column
-- requires: schemas/agentic_db_app_public/tables/tool_executions/columns/status/column



ALTER TABLE agentic_db_app_public.tool_executions 
    ALTER COLUMN status SET DEFAULT 'pending';

