-- Revert: schemas/agent_db_app_public/tables/templates/columns/content/alterations/alt0000004778


ALTER TABLE "agent_db_app_public".templates 
  ALTER COLUMN content DROP NOT NULL;


