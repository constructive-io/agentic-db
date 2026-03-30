-- Revert: schemas/agentic_db_app_public/tables/expense_contacts/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".expense_contacts 
  DROP COLUMN entity_id RESTRICT;


