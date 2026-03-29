-- Deploy: schemas/agentic_db_app_public/tables/task_notes/columns/task_id/alterations/alt0000006196
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_notes/table
-- requires: schemas/agentic_db_app_public/tables/task_notes/columns/task_id/column
-- requires: schemas/agentic_db_app_public/tables/event_notes/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.task_notes 
  ALTER COLUMN task_id SET NOT NULL;

