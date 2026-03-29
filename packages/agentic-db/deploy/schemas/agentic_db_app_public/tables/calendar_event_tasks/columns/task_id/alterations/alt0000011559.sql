-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_tasks/columns/task_id/alterations/alt0000011559
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/columns/task_id/column
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.calendar_event_tasks 
  ALTER COLUMN task_id SET NOT NULL;

