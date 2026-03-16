-- Deploy: schemas/agent_db_app_public/tables/task_contacts/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/task_contacts/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/constraints/habit_logs_habit_id_fkey/constraint


GRANT DELETE ON "agent_db_app_public".task_contacts TO authenticated;

