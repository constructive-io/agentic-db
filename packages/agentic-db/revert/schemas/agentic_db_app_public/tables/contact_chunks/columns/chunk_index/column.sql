-- Revert: schemas/agentic_db_app_public/tables/contact_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".contact_chunks 
  DROP COLUMN chunk_index RESTRICT;


