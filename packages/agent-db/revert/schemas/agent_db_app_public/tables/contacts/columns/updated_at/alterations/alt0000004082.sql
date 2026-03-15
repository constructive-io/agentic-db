-- Revert: schemas/agent_db_app_public/tables/contacts/columns/updated_at/alterations/alt0000004082


ALTER TABLE "agent_db_app_public".contacts 
  ALTER COLUMN updated_at DROP NOT NULL;


