-- Revert: schemas/agentic_db_app_public/tables/memories_chunks/columns/updated_at/alterations/alt0000001686


ALTER TABLE "agentic_db_app_public".memories_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


