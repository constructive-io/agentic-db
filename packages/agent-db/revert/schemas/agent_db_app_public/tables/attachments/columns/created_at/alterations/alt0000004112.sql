-- Revert: schemas/agent_db_app_public/tables/attachments/columns/created_at/alterations/alt0000004112


ALTER TABLE "agent_db_app_public".attachments 
  ALTER COLUMN created_at DROP NOT NULL;


