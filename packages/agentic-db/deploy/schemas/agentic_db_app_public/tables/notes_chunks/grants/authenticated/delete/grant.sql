-- Deploy: schemas/agentic_db_app_public/tables/notes_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/table


GRANT DELETE ON "agentic_db_app_public".notes_chunks TO authenticated;

