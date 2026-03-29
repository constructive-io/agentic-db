-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.projects_chunks 
  DROP COLUMN entity_id RESTRICT;


