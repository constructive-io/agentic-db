-- Deploy: schemas/agentic_db_app_public/tables/tasks_chunks/constraints/tasks_chunks_tasks_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.tasks_chunks 
  ADD CONSTRAINT tasks_chunks_tasks_id_fkey 
    FOREIGN KEY(tasks_id) 
    REFERENCES agentic_db_app_public.tasks (id) 
    ON DELETE CASCADE;

