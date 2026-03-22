-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/columns/memory_id/alterations/alt0000001785


ALTER TABLE "agentic_db_app_public".memory_chunks 
  ALTER COLUMN memory_id DROP NOT NULL;


