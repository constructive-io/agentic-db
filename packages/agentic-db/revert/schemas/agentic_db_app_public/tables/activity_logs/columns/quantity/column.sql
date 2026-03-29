-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/quantity/column


ALTER TABLE agentic_db_app_public.activity_logs 
  DROP COLUMN quantity RESTRICT;


