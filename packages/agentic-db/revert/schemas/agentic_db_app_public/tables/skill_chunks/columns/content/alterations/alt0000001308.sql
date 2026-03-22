-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/columns/content/alterations/alt0000001308


ALTER TABLE "agentic_db_app_public".skill_chunks 
  ALTER COLUMN content DROP NOT NULL;


