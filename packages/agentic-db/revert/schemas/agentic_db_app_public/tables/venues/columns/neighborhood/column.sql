-- Revert: schemas/agentic_db_app_public/tables/venues/columns/neighborhood/column


ALTER TABLE "agentic_db_app_public".venues 
  DROP COLUMN neighborhood RESTRICT;


