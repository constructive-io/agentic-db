-- Deploy: schemas/agentic_db_app_public/tables/agents/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".agents 
  ENABLE ROW LEVEL SECURITY;

