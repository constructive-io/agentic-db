-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/columns/created_at/alterations/alt0000001314


ALTER TABLE "agentic_db_app_public".skills_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


