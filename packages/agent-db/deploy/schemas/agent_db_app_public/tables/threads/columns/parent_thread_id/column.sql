-- Deploy: schemas/agent_db_app_public/tables/threads/columns/parent_thread_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/threads/table
-- requires: schemas/agent_db_app_public/tables/threads/columns/status/alterations/alt0000004351


ALTER TABLE "agent_db_app_public".threads 
  ADD COLUMN parent_thread_id uuid;

