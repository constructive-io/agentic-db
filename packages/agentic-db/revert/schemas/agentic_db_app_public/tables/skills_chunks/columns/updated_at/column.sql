-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.skills_chunks 
  DROP COLUMN updated_at RESTRICT;


