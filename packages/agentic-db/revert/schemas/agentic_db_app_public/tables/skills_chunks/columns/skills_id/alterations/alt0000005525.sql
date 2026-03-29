-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/columns/skills_id/alterations/alt0000005525


ALTER TABLE agentic_db_app_public.skills_chunks 
  ALTER COLUMN skills_id DROP NOT NULL;


