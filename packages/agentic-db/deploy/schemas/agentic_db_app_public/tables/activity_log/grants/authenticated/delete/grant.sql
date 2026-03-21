-- Deploy: schemas/agentic_db_app_public/tables/activity_log/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log/table
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/embedding/column


GRANT DELETE ON agentic_db_app_public.activity_log TO authenticated;

