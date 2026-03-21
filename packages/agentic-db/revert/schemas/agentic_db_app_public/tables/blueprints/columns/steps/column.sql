-- Revert: schemas/agentic_db_app_public/tables/blueprints/columns/steps/column


ALTER TABLE agentic_db_app_public.blueprints 
  DROP COLUMN steps RESTRICT;


