-- Revert: schemas/agentic_db_app_public/tables/skills/columns/active_count/column


ALTER TABLE agentic_db_app_public.skills 
  DROP COLUMN active_count RESTRICT;


