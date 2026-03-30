-- Revert: schemas/agentic_db_app_public/tables/images/columns/id/column


ALTER TABLE "agentic_db_app_public".images 
  DROP COLUMN id RESTRICT;


