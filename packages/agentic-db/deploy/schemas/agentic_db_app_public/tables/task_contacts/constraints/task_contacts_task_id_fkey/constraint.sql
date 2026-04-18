-- Deploy: schemas/agentic_db_app_public/tables/task_contacts/constraints/task_contacts_task_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/task_contacts/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.task_contacts 
  ADD CONSTRAINT task_contacts_task_id_fkey 
    FOREIGN KEY(task_id) 
    REFERENCES agentic_db_app_public.tasks (id) 
    ON DELETE CASCADE;

