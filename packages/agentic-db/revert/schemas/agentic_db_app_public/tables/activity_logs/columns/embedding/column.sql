-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/embedding/column


ALTER TABLE agentic_db_app_public.activity_logs 
  DROP COLUMN embedding RESTRICT;


