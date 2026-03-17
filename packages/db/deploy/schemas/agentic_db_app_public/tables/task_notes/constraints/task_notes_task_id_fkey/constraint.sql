-- Deploy: schemas/agentic_db_app_public/tables/task_notes/constraints/task_notes_task_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/task_notes/table
-- requires: schemas/agentic_db_app_public/tables/event_notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".task_notes 
  ADD CONSTRAINT task_notes_task_id_fkey 
    FOREIGN KEY(task_id) 
    REFERENCES "agentic_db_app_public".tasks (id) 
    ON DELETE CASCADE;

