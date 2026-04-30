-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/columns/updated_at/alterations/alt0000000521
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/tool_executions/columns/updated_at/column


COMMENT ON COLUMN agentic_db_app_public.tool_executions.updated_at IS 'Timestamp when this record was last updated';

