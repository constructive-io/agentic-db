-- Deploy: schemas/agentic_db_app_public/tables/repository_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chunks/columns/embedding/column


GRANT DELETE ON agentic_db_app_public.repository_chunks TO authenticated;

