-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/contexts_used/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/extracted_memory_ids/column


ALTER TABLE "agent_db_app_public".sessions 
  ADD COLUMN contexts_used jsonb;

