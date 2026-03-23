-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".skills_chunks 
  DROP COLUMN created_at RESTRICT;


