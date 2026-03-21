-- Deploy: schemas/agentic_db_app_public/tables/list_chunks/constraints/list_chunks_list_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/lists/table
-- requires: schemas/agentic_db_app_public/tables/list_chunks/table
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/indexes/reminder_chunks_reminder_id_idx


ALTER TABLE agentic_db_app_public.list_chunks 
  ADD CONSTRAINT list_chunks_list_id_fkey 
    FOREIGN KEY(list_id) 
    REFERENCES agentic_db_app_public.lists (id) 
    ON DELETE CASCADE;

