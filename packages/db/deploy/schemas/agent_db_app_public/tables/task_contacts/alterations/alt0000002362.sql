-- Deploy: schemas/agent_db_app_public/tables/task_contacts/alterations/alt0000002362
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/task_contacts/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/constraints/habit_logs_habit_id_fkey/constraint


ALTER TABLE "agent_db_app_public".task_contacts 
  DISABLE ROW LEVEL SECURITY;

