-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/updated_at/alterations/alt0000000535
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_status_idx


COMMENT ON COLUMN agentic_db_app_public.projects.updated_at IS 'Timestamp when this record was last updated';

