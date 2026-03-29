-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/columns/entity_id/alterations/alt0000005736


ALTER TABLE agentic_db_app_public.projects_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


