-- Revert: schemas/agentic_db_app_public/tables/memories/columns/importance/column


ALTER TABLE "agentic_db_app_public".memories 
  DROP COLUMN importance RESTRICT;


