-- Deploy: schemas/agentic_db_app_public/tables/workflow_runs/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/table
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/columns/timeout_ms/column


GRANT SELECT ON "agentic_db_app_public".workflow_runs TO authenticated;

