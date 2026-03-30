-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/agent_id/alterations/alt0000001413
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".skills 
  ALTER COLUMN agent_id SET NOT NULL;

