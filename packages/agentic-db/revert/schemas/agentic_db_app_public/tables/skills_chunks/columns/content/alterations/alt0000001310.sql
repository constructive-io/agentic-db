-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/columns/content/alterations/alt0000001310


ALTER TABLE "agentic_db_app_public".skills_chunks 
  ALTER COLUMN content DROP NOT NULL;


