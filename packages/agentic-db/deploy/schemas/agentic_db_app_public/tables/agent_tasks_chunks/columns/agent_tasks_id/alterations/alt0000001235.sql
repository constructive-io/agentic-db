-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks_chunks/columns/agent_tasks_id/alterations/alt0000001235
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx
-- requires: schemas/agentic_db_app_public/tables/agent_tasks_chunks/columns/agent_tasks_id/column


ALTER TABLE "agentic_db_app_public".agent_tasks_chunks 
  ALTER COLUMN agent_tasks_id SET NOT NULL;

