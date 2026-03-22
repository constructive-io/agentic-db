-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".memory_chunks 
  DROP COLUMN embedding RESTRICT;


