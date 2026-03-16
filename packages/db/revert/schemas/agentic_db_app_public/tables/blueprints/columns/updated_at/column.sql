-- Revert: schemas/agentic_db_app_public/tables/blueprints/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".blueprints 
  DROP COLUMN updated_at RESTRICT;


