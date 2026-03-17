-- Revert: schemas/agentic_db_app_public/tables/deals/columns/expected_close_date/column


ALTER TABLE "agentic_db_app_public".deals 
  DROP COLUMN expected_close_date RESTRICT;


