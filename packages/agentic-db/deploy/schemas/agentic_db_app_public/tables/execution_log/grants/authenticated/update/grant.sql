-- Deploy: schemas/agentic_db_app_public/tables/execution_log/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/execution_log/table
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/embedding/column


GRANT UPDATE ON agentic_db_app_public.execution_log TO authenticated;

