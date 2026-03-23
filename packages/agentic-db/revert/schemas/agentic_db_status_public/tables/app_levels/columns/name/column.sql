-- Revert: schemas/agentic_db_status_public/tables/app_levels/columns/name/column


ALTER TABLE agentic_db_status_public.app_levels 
  DROP COLUMN name RESTRICT;


