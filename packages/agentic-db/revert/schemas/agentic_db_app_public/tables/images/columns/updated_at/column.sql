-- Revert: schemas/agentic_db_app_public/tables/images/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".images 
  DROP COLUMN updated_at RESTRICT;


