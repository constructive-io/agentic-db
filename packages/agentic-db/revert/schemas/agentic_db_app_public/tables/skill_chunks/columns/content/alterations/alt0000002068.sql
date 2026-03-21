-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/columns/content/alterations/alt0000002068


ALTER TABLE "agentic_db_app_public".skill_chunks 
  ALTER COLUMN content DROP NOT NULL;


