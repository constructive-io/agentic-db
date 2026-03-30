-- Deploy: schemas/agentic_db_app_public/tables/tasks_chunks/alterations/alt0000001232
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".tasks_chunks 
  DISABLE ROW LEVEL SECURITY;

