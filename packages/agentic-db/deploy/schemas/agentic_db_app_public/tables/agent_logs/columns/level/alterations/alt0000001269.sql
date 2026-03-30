-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/columns/level/alterations/alt0000001269
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/level/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".agent_logs 
  ALTER COLUMN level SET NOT NULL;

