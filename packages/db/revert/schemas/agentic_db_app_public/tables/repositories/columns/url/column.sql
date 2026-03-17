-- Revert: schemas/agentic_db_app_public/tables/repositories/columns/url/column


ALTER TABLE "agentic_db_app_public".repositories 
  DROP COLUMN url RESTRICT;


