-- Revert: schemas/agentic_db_app_public/tables/companies/columns/search_tsv/column


ALTER TABLE agentic_db_app_public.companies 
  DROP COLUMN search_tsv RESTRICT;


