-- Revert: schemas/agentic_db_app_public/tables/templates/columns/embedding/column


ALTER TABLE "agentic_db_app_public".templates 
  DROP COLUMN embedding RESTRICT;


