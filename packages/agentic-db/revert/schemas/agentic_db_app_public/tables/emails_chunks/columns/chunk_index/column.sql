-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".emails_chunks 
  DROP COLUMN chunk_index RESTRICT;


