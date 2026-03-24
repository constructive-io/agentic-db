-- Revert: schemas/agentic_db_app_public/tables/images/columns/meta/column


ALTER TABLE "agentic_db_app_public".images 
  DROP COLUMN meta RESTRICT;


