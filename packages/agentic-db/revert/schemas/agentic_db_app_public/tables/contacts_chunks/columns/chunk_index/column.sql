-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".contacts_chunks 
  DROP COLUMN chunk_index RESTRICT;


