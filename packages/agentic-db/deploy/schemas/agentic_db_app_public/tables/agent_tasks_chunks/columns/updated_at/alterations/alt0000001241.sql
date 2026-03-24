-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks_chunks/columns/updated_at/alterations/alt0000001241
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx
-- requires: schemas/agentic_db_app_public/tables/agent_tasks_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".agent_tasks_chunks 
  ALTER COLUMN updated_at SET DEFAULT now();

