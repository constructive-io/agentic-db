-- Deploy: schemas/agentic_db_app_public/tables/agents_chunks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


GRANT INSERT ON agentic_db_app_public.agents_chunks TO authenticated;

