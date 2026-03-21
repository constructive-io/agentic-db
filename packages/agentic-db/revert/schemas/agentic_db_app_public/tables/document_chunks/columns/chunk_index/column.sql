-- Revert: schemas/agentic_db_app_public/tables/document_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".document_chunks 
  DROP COLUMN chunk_index RESTRICT;


