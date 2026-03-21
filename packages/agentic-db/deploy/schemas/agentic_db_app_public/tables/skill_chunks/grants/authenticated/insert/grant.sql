-- Deploy: schemas/agentic_db_app_public/tables/skill_chunks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/table
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/columns/embedding/column


GRANT INSERT ON "agentic_db_app_public".skill_chunks TO authenticated;

