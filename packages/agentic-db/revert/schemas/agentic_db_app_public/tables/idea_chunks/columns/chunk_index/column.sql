-- Revert: schemas/agentic_db_app_public/tables/idea_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".idea_chunks 
  DROP COLUMN chunk_index RESTRICT;


