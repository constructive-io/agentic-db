-- Revert: schemas/agentic_db_app_public/tables/projects/columns/entity_id/alterations/alt0000003176


ALTER TABLE agentic_db_app_public.projects 
  ALTER COLUMN entity_id DROP NOT NULL;


