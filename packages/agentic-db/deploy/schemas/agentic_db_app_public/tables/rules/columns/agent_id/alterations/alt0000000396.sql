-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/agent_id/alterations/alt0000000396
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.rules 
  ALTER COLUMN agent_id SET NOT NULL;

