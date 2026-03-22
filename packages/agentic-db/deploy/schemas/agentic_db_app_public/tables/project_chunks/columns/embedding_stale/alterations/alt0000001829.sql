-- Deploy: schemas/agentic_db_app_public/tables/project_chunks/columns/embedding_stale/alterations/alt0000001829
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_chunks/table
-- requires: schemas/agentic_db_app_public/tables/project_chunks/columns/embedding_stale/column
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_status_idx


ALTER TABLE "agentic_db_app_public".project_chunks 
  ALTER COLUMN embedding_stale SET NOT NULL;

