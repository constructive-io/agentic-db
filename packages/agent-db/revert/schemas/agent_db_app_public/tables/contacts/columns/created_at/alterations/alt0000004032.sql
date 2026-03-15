-- Revert: schemas/agent_db_app_public/tables/contacts/columns/created_at/alterations/alt0000004032


ALTER TABLE "agent_db_app_public".contacts 
  ALTER COLUMN created_at DROP NOT NULL;


