-- Deploy: schemas/agentic_db_app_public/tables/agents_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


GRANT DELETE ON agentic_db_app_public.agents_chunks TO authenticated;

