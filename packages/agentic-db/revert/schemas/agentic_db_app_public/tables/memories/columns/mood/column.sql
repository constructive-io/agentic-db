-- Revert: schemas/agentic_db_app_public/tables/memories/columns/mood/column


ALTER TABLE "agentic_db_app_public".memories 
  DROP COLUMN mood RESTRICT;


