-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/columns/agent_id/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/columns/agent_id/column


ALTER TABLE agentic_db_app_public.agent_prompts 
  ALTER COLUMN agent_id SET NOT NULL;

