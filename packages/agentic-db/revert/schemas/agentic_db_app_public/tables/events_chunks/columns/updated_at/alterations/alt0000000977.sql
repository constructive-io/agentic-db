-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/updated_at/alterations/alt0000000977


ALTER TABLE "agentic_db_app_public".events_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


