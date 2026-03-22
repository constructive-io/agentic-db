-- Deploy: schemas/agentic_db_app_public/tables/goal_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


GRANT DELETE ON "agentic_db_app_public".goal_chunks TO authenticated;

