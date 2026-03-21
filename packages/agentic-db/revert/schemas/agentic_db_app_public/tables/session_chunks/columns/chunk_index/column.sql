-- Revert: schemas/agentic_db_app_public/tables/session_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.session_chunks 
  DROP COLUMN chunk_index RESTRICT;


