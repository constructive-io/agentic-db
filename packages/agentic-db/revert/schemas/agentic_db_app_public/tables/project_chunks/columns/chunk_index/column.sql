-- Revert: schemas/agentic_db_app_public/tables/project_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".project_chunks 
  DROP COLUMN chunk_index RESTRICT;


