-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/columns/message/alterations/alt0000015441
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/message/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.agent_logs 
  ALTER COLUMN message SET NOT NULL;

