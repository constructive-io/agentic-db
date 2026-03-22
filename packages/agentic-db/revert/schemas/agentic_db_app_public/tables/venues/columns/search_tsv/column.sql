-- Revert: schemas/agentic_db_app_public/tables/venues/columns/search_tsv/column


ALTER TABLE agentic_db_app_public.venues 
  DROP COLUMN search_tsv RESTRICT;


