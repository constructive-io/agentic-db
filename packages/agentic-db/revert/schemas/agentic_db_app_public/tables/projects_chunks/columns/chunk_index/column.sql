-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".projects_chunks 
  DROP COLUMN chunk_index RESTRICT;


