-- Deploy: schemas/agentic_db_app_public/tables/reminder_chunks/constraints/reminder_chunks_reminder_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminders/table
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/table
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/indexes/idea_chunks_idea_id_idx


ALTER TABLE "agentic_db_app_public".reminder_chunks 
  ADD CONSTRAINT reminder_chunks_reminder_id_fkey 
    FOREIGN KEY(reminder_id) 
    REFERENCES "agentic_db_app_public".reminders (id) 
    ON DELETE CASCADE;

