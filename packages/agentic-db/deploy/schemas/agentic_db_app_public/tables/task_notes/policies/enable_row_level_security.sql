-- Deploy: schemas/agentic_db_app_public/tables/task_notes/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_notes/table
-- requires: schemas/agentic_db_app_public/tables/event_notes/indexes/event_notes_note_id_idx


ALTER TABLE agentic_db_app_public.task_notes 
  ENABLE ROW LEVEL SECURITY;

