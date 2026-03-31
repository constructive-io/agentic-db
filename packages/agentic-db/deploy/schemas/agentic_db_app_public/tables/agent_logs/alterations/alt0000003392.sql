-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/alterations/alt0000003392
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.agent_logs 
  DISABLE ROW LEVEL SECURITY;

