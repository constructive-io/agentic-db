-- Deploy: schemas/agentic_db_app_public/tables/projects_chunks/alterations/alt0000001609
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_status_idx


COMMENT ON TABLE "agentic_db_app_public".projects_chunks IS E'@@chunksOf {"parent_fk": "projects_id", "parent_table": "projects"}';

