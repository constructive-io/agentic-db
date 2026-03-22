-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/columns/title/alterations/alt0000005874
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/title/column
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/agent_id/alterations/alt0000005873


ALTER TABLE agentic_db_app_public.agent_tasks 
  ALTER COLUMN title SET NOT NULL;

