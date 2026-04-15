-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/columns/created_at/alterations/alt0000015609
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/tool_executions/columns/created_at/column



ALTER TABLE agentic_db_app_public.tool_executions 
    ALTER COLUMN created_at SET DEFAULT now();

