-- Revert: schemas/agentic_db_app_public/tables/images/columns/embedding/column


ALTER TABLE "agentic_db_app_public".images 
  DROP COLUMN embedding RESTRICT;


