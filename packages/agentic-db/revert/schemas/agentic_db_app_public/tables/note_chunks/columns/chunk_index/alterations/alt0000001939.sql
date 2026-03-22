-- Revert: schemas/agentic_db_app_public/tables/note_chunks/columns/chunk_index/alterations/alt0000001939


ALTER TABLE "agentic_db_app_public".note_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


