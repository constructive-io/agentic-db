-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/columns/entity_id/alterations/alt0000005524


ALTER TABLE agentic_db_app_public.skills_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


