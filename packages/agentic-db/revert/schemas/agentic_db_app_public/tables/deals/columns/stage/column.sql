-- Revert: schemas/agentic_db_app_public/tables/deals/columns/stage/column


ALTER TABLE "agentic_db_app_public".deals 
  DROP COLUMN stage RESTRICT;


