-- Deploy: schemas/agentic_db_app_public/tables/task_contacts/columns/entity_id/alterations/alt0000001515
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_contacts/table
-- requires: schemas/agentic_db_app_public/tables/task_contacts/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/habit_logs/constraints/habit_logs_habit_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".task_contacts 
  ALTER COLUMN entity_id SET NOT NULL;

