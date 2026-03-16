-- Revert: schemas/agentic_db_app_public/tables/memories/columns/tags/column


ALTER TABLE "agentic_db_app_public".memories 
  DROP COLUMN tags RESTRICT;


