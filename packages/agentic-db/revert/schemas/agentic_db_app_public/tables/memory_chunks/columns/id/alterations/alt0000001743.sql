-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/columns/id/alterations/alt0000001743


ALTER TABLE "agentic_db_app_public".memory_chunks 
  ALTER COLUMN id DROP NOT NULL;


