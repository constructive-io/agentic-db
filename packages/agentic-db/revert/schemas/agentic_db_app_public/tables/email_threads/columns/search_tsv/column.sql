-- Revert: schemas/agentic_db_app_public/tables/email_threads/columns/search_tsv/column


ALTER TABLE agentic_db_app_public.email_threads 
  DROP COLUMN search_tsv RESTRICT;


