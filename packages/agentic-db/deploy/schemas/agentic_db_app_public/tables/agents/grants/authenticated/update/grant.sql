-- Deploy: schemas/agentic_db_app_public/tables/agents/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


GRANT UPDATE ON "agentic_db_app_public".agents TO authenticated;

