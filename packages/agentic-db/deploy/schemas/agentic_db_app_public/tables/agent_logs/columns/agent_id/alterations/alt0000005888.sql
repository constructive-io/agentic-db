-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/columns/agent_id/alterations/alt0000005888
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/updated_at/alterations/alt0000005887


ALTER TABLE agentic_db_app_public.agent_logs 
  ALTER COLUMN agent_id SET NOT NULL;

