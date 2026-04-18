-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_tasks/constraints/calendar_event_tasks_task_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.calendar_event_tasks 
  ADD CONSTRAINT calendar_event_tasks_task_id_fkey 
    FOREIGN KEY(task_id) 
    REFERENCES agentic_db_app_public.tasks (id) 
    ON DELETE CASCADE;

