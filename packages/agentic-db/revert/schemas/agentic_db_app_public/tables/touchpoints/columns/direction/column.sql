-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/direction/column


ALTER TABLE "agentic_db_app_public".touchpoints 
  DROP COLUMN direction RESTRICT;


