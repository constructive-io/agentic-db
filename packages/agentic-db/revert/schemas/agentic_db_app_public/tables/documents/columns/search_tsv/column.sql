-- Revert: schemas/agentic_db_app_public/tables/documents/columns/search_tsv/column


ALTER TABLE "agentic_db_app_public".documents 
  DROP COLUMN search_tsv RESTRICT;


