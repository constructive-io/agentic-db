-- Deploy: schemas/agentic_db_app_public/tables/session_archives/constraints/session_archives_session_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/indexes/workflow_runs_workflow_id_idx


ALTER TABLE "agentic_db_app_public".session_archives 
  ADD CONSTRAINT session_archives_session_id_fkey 
    FOREIGN KEY(session_id) 
    REFERENCES "agentic_db_app_public".sessions (id) 
    ON DELETE CASCADE;

