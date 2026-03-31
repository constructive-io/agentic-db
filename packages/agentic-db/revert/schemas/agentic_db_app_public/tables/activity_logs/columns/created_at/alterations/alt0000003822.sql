-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/created_at/alterations/alt0000003822




ALTER TABLE agentic_db_app_public.activity_logs 
    ALTER COLUMN created_at DROP DEFAULT;



