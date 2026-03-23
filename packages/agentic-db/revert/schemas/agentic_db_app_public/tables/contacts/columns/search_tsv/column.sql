-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/search_tsv/column


ALTER TABLE agentic_db_app_public.contacts 
  DROP COLUMN search_tsv RESTRICT;


