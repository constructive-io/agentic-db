-- Deploy: schemas/agentic_db_app_public/tables/idea_chunks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/embedding/column


GRANT INSERT ON agentic_db_app_public.idea_chunks TO authenticated;

