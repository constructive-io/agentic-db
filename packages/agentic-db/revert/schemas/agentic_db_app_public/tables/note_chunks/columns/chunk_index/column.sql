-- Revert: schemas/agentic_db_app_public/tables/note_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".note_chunks 
  DROP COLUMN chunk_index RESTRICT;


