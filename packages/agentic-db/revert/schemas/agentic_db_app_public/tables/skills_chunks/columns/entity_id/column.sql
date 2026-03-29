-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.skills_chunks 
  DROP COLUMN entity_id RESTRICT;


