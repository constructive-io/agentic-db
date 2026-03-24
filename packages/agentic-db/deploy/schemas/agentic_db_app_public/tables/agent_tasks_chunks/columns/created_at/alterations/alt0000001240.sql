-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks_chunks/columns/created_at/alterations/alt0000001240
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx
-- requires: schemas/agentic_db_app_public/tables/agent_tasks_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".agent_tasks_chunks 
  ALTER COLUMN created_at SET DEFAULT now();

