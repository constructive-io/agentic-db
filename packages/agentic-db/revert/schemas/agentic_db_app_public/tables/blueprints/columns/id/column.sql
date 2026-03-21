-- Revert: schemas/agentic_db_app_public/tables/blueprints/columns/id/column


ALTER TABLE agentic_db_app_public.blueprints 
  DROP COLUMN id RESTRICT;


