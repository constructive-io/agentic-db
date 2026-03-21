-- Revert: schemas/agentic_db_app_public/tables/blueprints/columns/created_at/column


ALTER TABLE agentic_db_app_public.blueprints 
  DROP COLUMN created_at RESTRICT;


