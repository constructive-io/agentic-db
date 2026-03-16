-- Deploy: schemas/agent_db_app_public/tables/task_contacts/columns/task_id/alterations/alt0000002363
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/task_contacts/table
-- requires: schemas/agent_db_app_public/tables/task_contacts/columns/task_id/column
-- requires: schemas/agent_db_app_public/tables/habit_logs/constraints/habit_logs_habit_id_fkey/constraint


ALTER TABLE "agent_db_app_public".task_contacts 
  ALTER COLUMN task_id SET NOT NULL;

