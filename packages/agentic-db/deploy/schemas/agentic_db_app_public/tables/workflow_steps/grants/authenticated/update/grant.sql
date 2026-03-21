-- Deploy: schemas/agentic_db_app_public/tables/workflow_steps/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/table
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/tags/column


GRANT UPDATE ON agentic_db_app_public.workflow_steps TO authenticated;

