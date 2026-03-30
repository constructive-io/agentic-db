-- Revert: schemas/agentic_db_app_public/tables/deals/columns/id/column


ALTER TABLE "agentic_db_app_public".deals 
  DROP COLUMN id RESTRICT;


