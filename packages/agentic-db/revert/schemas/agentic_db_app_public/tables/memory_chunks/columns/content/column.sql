-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".memory_chunks 
  DROP COLUMN content RESTRICT;


