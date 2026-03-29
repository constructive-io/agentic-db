-- Revert: schemas/agentic_db_app_public/tables/emails/columns/search_tsv/column


ALTER TABLE agentic_db_app_public.emails 
  DROP COLUMN search_tsv RESTRICT;


