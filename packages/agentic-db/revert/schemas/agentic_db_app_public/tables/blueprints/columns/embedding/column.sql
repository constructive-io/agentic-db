-- Revert: schemas/agentic_db_app_public/tables/blueprints/columns/embedding/column


ALTER TABLE "agentic_db_app_public".blueprints 
  DROP COLUMN embedding RESTRICT;


