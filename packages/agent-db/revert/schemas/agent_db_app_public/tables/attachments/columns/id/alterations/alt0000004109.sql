-- Revert: schemas/agent_db_app_public/tables/attachments/columns/id/alterations/alt0000004109


ALTER TABLE "agent_db_app_public".attachments 
  ALTER COLUMN id DROP NOT NULL;


