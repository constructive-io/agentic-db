-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/columns/id/alterations/alt0000002981


ALTER TABLE agentic_db_app_public.skills_chunks 
  ALTER COLUMN id DROP NOT NULL;


