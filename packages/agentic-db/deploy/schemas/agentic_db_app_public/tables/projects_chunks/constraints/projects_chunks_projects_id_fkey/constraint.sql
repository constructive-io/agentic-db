-- Deploy: schemas/agentic_db_app_public/tables/projects_chunks/constraints/projects_chunks_projects_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_status_idx


ALTER TABLE "agentic_db_app_public".projects_chunks 
  ADD CONSTRAINT projects_chunks_projects_id_fkey 
    FOREIGN KEY(projects_id) 
    REFERENCES "agentic_db_app_public".projects (id) 
    ON DELETE CASCADE;

