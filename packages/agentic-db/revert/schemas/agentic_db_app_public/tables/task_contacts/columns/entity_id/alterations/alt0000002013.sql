-- Revert: schemas/agentic_db_app_public/tables/task_contacts/columns/entity_id/alterations/alt0000002013


ALTER TABLE "agentic_db_app_public".task_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


