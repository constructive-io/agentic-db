-- Revert: schemas/agentic_db_status_public/tables/app_achievements/columns/count/column


ALTER TABLE agentic_db_status_public.app_achievements 
  DROP COLUMN count RESTRICT;


