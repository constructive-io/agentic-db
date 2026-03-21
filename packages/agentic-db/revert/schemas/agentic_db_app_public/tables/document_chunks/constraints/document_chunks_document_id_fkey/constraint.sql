-- Revert: schemas/agentic_db_app_public/tables/document_chunks/constraints/document_chunks_document_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".document_chunks 
  DROP CONSTRAINT document_chunks_document_id_fkey;


