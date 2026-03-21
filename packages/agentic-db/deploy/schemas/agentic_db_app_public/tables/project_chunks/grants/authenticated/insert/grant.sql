-- Deploy: schemas/agentic_db_app_public/tables/project_chunks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_chunks/table
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/status/alterations/alt0000004376


GRANT INSERT ON agentic_db_app_public.project_chunks TO authenticated;

