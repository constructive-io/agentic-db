-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/columns/agent_id/alterations/alt0000001199
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/updated_at/alterations/alt0000001198


ALTER TABLE "agentic_db_app_public".agent_tasks 
  ALTER COLUMN agent_id SET NOT NULL;

