-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/created_at/alterations/alt0000000297
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


COMMENT ON COLUMN agentic_db_app_public.agents.created_at IS 'Timestamp when this record was created';

