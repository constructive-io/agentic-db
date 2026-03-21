-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/assigned_agent_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/task_type/alterations/alt0000001972


ALTER TABLE "agentic_db_app_public".tasks 
  ADD COLUMN assigned_agent_id uuid;

