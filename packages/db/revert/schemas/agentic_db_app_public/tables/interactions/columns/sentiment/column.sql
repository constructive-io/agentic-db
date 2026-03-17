-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/sentiment/column


ALTER TABLE "agentic_db_app_public".interactions 
  DROP COLUMN sentiment RESTRICT;


