-- Deploy: schemas/agentic_db_app_public/tables/contact_memories/columns/contact_id/alterations/alt0000013653
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_memories/table
-- requires: schemas/agentic_db_app_public/tables/task_notes/indexes/task_notes_note_id_idx
-- requires: schemas/agentic_db_app_public/tables/contact_memories/columns/contact_id/column


ALTER TABLE agentic_db_app_public.contact_memories 
  ALTER COLUMN contact_id SET NOT NULL;

