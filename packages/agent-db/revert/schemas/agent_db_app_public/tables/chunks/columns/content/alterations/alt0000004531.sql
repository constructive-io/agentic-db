-- Revert: schemas/agent_db_app_public/tables/chunks/columns/content/alterations/alt0000004531


ALTER TABLE "agent_db_app_public".chunks 
  ALTER COLUMN content DROP NOT NULL;


