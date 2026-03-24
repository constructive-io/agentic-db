-- Revert: schemas/agentic_db_app_public/tables/memories/columns/location/column


ALTER TABLE "agentic_db_app_public".memories 
  DROP COLUMN location RESTRICT;


