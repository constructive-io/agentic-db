-- Revert: schemas/agentic_db_app_public/tables/event_notes/columns/id/alterations/alt0000002155


ALTER TABLE "agentic_db_app_public".event_notes 
  ALTER COLUMN id DROP NOT NULL;


