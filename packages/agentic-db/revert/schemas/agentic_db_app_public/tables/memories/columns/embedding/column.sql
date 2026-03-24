-- Revert: schemas/agentic_db_app_public/tables/memories/columns/embedding/column


ALTER TABLE "agentic_db_app_public".memories 
  DROP COLUMN embedding RESTRICT;


