-- Revert: schemas/agent_db_app_public/tables/attachments/columns/url/alterations/alt0000004164


ALTER TABLE "agent_db_app_public".attachments 
  ALTER COLUMN url DROP NOT NULL;


