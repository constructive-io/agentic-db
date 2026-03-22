-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".memory_chunks 
  DROP COLUMN updated_at RESTRICT;


