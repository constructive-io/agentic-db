-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/columns/updated_at/alterations/alt0000001313


ALTER TABLE "agentic_db_app_public".skills_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


