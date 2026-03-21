-- Revert: schemas/agentic_db_app_public/tables/templates/columns/entity_id/alterations/alt0000004644


ALTER TABLE agentic_db_app_public.templates 
  ALTER COLUMN entity_id DROP NOT NULL;


