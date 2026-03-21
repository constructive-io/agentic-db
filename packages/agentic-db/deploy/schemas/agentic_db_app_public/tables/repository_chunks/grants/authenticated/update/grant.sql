-- Deploy: schemas/agentic_db_app_public/tables/repository_chunks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chunks/columns/embedding/column


GRANT UPDATE ON "agentic_db_app_public".repository_chunks TO authenticated;

