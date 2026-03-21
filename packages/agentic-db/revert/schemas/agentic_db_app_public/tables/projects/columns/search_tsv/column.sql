-- Revert: schemas/agentic_db_app_public/tables/projects/columns/search_tsv/column


ALTER TABLE agentic_db_app_public.projects 
  DROP COLUMN search_tsv RESTRICT;


