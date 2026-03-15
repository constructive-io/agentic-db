-- Revert: schemas/agent_db_app_public/tables/contacts/columns/first_name/alterations/alt0000004036


ALTER TABLE "agent_db_app_public".contacts 
  ALTER COLUMN first_name DROP NOT NULL;


