-- Deploy: schemas/agentic_db_app_public/tables/blueprint_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/table
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/columns/embedding/column


GRANT DELETE ON agentic_db_app_public.blueprint_chunks TO authenticated;

