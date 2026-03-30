-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/embedding/column


ALTER TABLE "agentic_db_app_public".interactions 
  DROP COLUMN embedding RESTRICT;


