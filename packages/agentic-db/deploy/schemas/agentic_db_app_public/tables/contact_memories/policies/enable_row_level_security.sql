-- Deploy: schemas/agentic_db_app_public/tables/contact_memories/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_memories/table
-- requires: schemas/agentic_db_app_public/tables/task_notes/indexes/task_notes_note_id_idx


ALTER TABLE agentic_db_app_public.contact_memories 
  ENABLE ROW LEVEL SECURITY;

