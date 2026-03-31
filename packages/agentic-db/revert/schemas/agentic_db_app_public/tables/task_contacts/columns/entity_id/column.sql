-- Revert: schemas/agentic_db_app_public/tables/task_contacts/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".task_contacts 
  DROP COLUMN entity_id RESTRICT;


