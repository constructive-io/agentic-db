-- Revert: schemas/agentic_db_app_public/tables/documents/columns/commit_hash/column


ALTER TABLE agentic_db_app_public.documents 
  DROP COLUMN commit_hash RESTRICT;


