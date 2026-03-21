-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/columns/updated_at/alterations/alt0000002055


ALTER TABLE "agentic_db_app_public".memory_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


