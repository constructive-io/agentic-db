-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/created_at/alterations/alt0000001570
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_status_idx


ALTER TABLE "agentic_db_app_public".projects 
  ALTER COLUMN created_at SET NOT NULL;

