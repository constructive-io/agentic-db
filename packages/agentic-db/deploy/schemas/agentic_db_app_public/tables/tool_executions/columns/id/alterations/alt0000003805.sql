-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/columns/id/alterations/alt0000003805
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/tool_executions/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx



ALTER TABLE agentic_db_app_public.tool_executions 
    ALTER COLUMN id SET DEFAULT uuidv7();

