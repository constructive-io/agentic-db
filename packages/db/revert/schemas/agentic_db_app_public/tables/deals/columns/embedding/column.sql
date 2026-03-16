-- Revert: schemas/agentic_db_app_public/tables/deals/columns/embedding/column


ALTER TABLE "agentic_db_app_public".deals 
  DROP COLUMN embedding RESTRICT;


