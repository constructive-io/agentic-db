-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


GRANT UPDATE ON "agentic_db_app_public".agent_logs TO authenticated;

