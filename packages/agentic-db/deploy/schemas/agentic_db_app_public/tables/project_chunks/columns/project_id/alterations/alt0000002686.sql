-- Deploy: schemas/agentic_db_app_public/tables/project_chunks/columns/project_id/alterations/alt0000002686
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_chunks/table
-- requires: schemas/agentic_db_app_public/tables/project_chunks/columns/project_id/column
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_status_idx


ALTER TABLE agentic_db_app_public.project_chunks 
  ALTER COLUMN project_id SET NOT NULL;

