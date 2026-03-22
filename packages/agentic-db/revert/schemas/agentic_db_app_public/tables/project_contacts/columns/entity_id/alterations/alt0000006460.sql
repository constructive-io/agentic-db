-- Revert: schemas/agentic_db_app_public/tables/project_contacts/columns/entity_id/alterations/alt0000006460


ALTER TABLE agentic_db_app_public.project_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


