-- Revert: schemas/agent_db_app_public/tables/attachments/columns/url/alterations/alt0000004116


ALTER TABLE "agent_db_app_public".attachments 
  ALTER COLUMN url DROP NOT NULL;


