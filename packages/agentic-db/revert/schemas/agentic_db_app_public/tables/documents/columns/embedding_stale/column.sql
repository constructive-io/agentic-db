-- Revert: schemas/agentic_db_app_public/tables/documents/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.documents 
  DROP COLUMN embedding_stale RESTRICT;


