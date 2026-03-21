-- Revert: schemas/agentic_db_app_public/tables/blueprints/columns/entity_id/alterations/alt0000004148


ALTER TABLE agentic_db_app_public.blueprints 
  ALTER COLUMN entity_id DROP NOT NULL;


