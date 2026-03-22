-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


GRANT INSERT ON "agentic_db_app_public".agent_chunks TO authenticated;

