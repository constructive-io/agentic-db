-- Revert: schemas/agent_db_app_public/tables/expense_contacts/columns/entity_id/alterations/alt0000002391


ALTER TABLE "agent_db_app_public".expense_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


