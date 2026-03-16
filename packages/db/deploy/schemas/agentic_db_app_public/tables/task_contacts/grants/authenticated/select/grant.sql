-- Deploy: schemas/agentic_db_app_public/tables/task_contacts/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_contacts/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/constraints/habit_logs_habit_id_fkey/constraint


GRANT SELECT ON "agentic_db_app_public".task_contacts TO authenticated;

