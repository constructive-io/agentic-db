-- Revert: schemas/agentic_db_app_public/tables/skills/columns/content_hash/column


ALTER TABLE agentic_db_app_public.skills 
  DROP COLUMN content_hash RESTRICT;


