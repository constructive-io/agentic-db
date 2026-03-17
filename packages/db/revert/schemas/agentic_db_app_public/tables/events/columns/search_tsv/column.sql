-- Revert: schemas/agentic_db_app_public/tables/events/columns/search_tsv/column


ALTER TABLE "agentic_db_app_public".events 
  DROP COLUMN search_tsv RESTRICT;


