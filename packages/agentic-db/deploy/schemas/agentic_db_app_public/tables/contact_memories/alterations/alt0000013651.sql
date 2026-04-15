-- Deploy: schemas/agentic_db_app_public/tables/contact_memories/alterations/alt0000013651
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_memories/table
-- requires: schemas/agentic_db_app_public/tables/task_notes/indexes/task_notes_note_id_idx


ALTER TABLE agentic_db_app_public.contact_memories 
  DISABLE ROW LEVEL SECURITY;

