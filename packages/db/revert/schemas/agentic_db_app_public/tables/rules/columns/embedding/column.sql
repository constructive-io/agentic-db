-- Revert: schemas/agentic_db_app_public/tables/rules/columns/embedding/column


ALTER TABLE "agentic_db_app_public".rules 
  DROP COLUMN embedding RESTRICT;


