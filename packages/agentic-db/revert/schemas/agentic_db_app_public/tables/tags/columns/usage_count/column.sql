-- Revert: schemas/agentic_db_app_public/tables/tags/columns/usage_count/column


ALTER TABLE agentic_db_app_public.tags 
  DROP COLUMN usage_count RESTRICT;


