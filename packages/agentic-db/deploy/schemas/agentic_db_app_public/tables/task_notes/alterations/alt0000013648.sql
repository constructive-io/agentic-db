-- Deploy: schemas/agentic_db_app_public/tables/task_notes/alterations/alt0000013648
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_notes/table
-- requires: schemas/agentic_db_app_public/tables/event_notes/indexes/event_notes_note_id_idx


COMMENT ON TABLE agentic_db_app_public.task_notes IS E'@behavior +manyToMany';

