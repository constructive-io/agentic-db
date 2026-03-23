-- Deploy: schemas/agentic_db_app_public/tables/goals/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


GRANT UPDATE ON "agentic_db_app_public".goals TO authenticated;

