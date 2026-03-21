-- Deploy: schemas/agentic_db_app_public/tables/reminder_chunks/indexes/reminder_chunks_reminder_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/table
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/columns/reminder_id/column
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/indexes/idea_chunks_idea_id_idx


CREATE INDEX reminder_chunks_reminder_id_idx ON agentic_db_app_public.reminder_chunks USING BTREE ( reminder_id );

