-- Revert: schemas/agentic_db_app_public/tables/activity_log/columns/created_at/alterations/alt0000004246




ALTER TABLE agentic_db_app_public.activity_log 
    ALTER COLUMN created_at DROP DEFAULT;



