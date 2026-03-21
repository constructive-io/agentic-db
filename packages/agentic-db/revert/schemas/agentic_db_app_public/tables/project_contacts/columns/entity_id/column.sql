-- Revert: schemas/agentic_db_app_public/tables/project_contacts/columns/entity_id/column


ALTER TABLE agentic_db_app_public.project_contacts 
  DROP COLUMN entity_id RESTRICT;


