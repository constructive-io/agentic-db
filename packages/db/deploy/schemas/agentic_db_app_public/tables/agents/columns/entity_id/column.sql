-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".agents 
  ADD COLUMN entity_id uuid;

