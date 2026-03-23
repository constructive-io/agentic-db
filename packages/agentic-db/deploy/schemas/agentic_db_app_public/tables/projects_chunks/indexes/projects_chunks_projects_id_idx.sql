-- Deploy: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_projects_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/columns/projects_id/column
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_status_idx


CREATE INDEX projects_chunks_projects_id_idx ON "agentic_db_app_public".projects_chunks USING BTREE ( projects_id );

