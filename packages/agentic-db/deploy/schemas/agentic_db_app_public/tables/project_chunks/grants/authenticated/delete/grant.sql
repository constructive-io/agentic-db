-- Deploy: schemas/agentic_db_app_public/tables/project_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_chunks/table
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/status/alterations/alt0000002390


GRANT DELETE ON "agentic_db_app_public".project_chunks TO authenticated;

