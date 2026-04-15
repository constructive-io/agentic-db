-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/completed_at/alterations/alt0000013423


ALTER TABLE agentic_db_app_public.activity_logs 
  ALTER COLUMN completed_at DROP NOT NULL;


