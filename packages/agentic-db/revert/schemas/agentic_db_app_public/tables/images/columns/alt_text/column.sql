-- Revert: schemas/agentic_db_app_public/tables/images/columns/alt_text/column


ALTER TABLE "agentic_db_app_public".images 
  DROP COLUMN alt_text RESTRICT;


