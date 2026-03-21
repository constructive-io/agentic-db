-- Deploy: schemas/agentic_db_app_public/tables/idea_chunks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/embedding/column


GRANT UPDATE ON "agentic_db_app_public".idea_chunks TO authenticated;

