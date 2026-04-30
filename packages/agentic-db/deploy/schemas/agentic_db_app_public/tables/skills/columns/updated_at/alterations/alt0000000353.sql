-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/updated_at/alterations/alt0000000353
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


COMMENT ON COLUMN agentic_db_app_public.skills.updated_at IS 'Timestamp when this record was last updated';

