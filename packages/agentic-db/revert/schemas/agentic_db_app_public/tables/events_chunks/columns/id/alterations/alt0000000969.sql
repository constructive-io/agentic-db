-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/id/alterations/alt0000000969


ALTER TABLE "agentic_db_app_public".events_chunks 
  ALTER COLUMN id DROP NOT NULL;


