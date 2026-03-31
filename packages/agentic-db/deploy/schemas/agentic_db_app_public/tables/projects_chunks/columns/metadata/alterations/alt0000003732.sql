-- Deploy: schemas/agentic_db_app_public/tables/projects_chunks/columns/metadata/alterations/alt0000003732
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/columns/metadata/column
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_status_idx



ALTER TABLE agentic_db_app_public.projects_chunks 
    ALTER COLUMN metadata SET DEFAULT '{}'::jsonb;

