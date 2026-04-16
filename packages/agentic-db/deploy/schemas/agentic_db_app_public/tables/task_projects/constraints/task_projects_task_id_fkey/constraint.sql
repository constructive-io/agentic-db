-- Deploy: schemas/agentic_db_app_public/tables/task_projects/constraints/task_projects_task_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/task_projects/table
-- requires: schemas/agentic_db_app_public/tables/task_contacts/indexes/task_contacts_contact_id_idx


ALTER TABLE agentic_db_app_public.task_projects 
  ADD CONSTRAINT task_projects_task_id_fkey 
    FOREIGN KEY(task_id) 
    REFERENCES agentic_db_app_public.tasks (id) 
    ON DELETE CASCADE;

