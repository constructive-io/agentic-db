-- Revert: schemas/agentic_db_app_public/tables/list_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".list_chunks 
  DROP COLUMN chunk_index RESTRICT;


