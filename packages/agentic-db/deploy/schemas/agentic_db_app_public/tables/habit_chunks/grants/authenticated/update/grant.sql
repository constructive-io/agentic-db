-- Deploy: schemas/agentic_db_app_public/tables/habit_chunks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


GRANT UPDATE ON "agentic_db_app_public".habit_chunks TO authenticated;

