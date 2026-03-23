-- Revert: schemas/agentic_db_app_public/tables/skills/columns/category/column


ALTER TABLE agentic_db_app_public.skills 
  DROP COLUMN category RESTRICT;


