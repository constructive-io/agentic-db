-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/columns/entity_id/alterations/alt0000003625
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.agent_logs 
  ALTER COLUMN entity_id SET NOT NULL;

