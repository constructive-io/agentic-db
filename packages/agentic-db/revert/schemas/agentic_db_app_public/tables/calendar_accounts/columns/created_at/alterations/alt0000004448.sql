-- Revert: schemas/agentic_db_app_public/tables/calendar_accounts/columns/created_at/alterations/alt0000004448




ALTER TABLE agentic_db_app_public.calendar_accounts 
    ALTER COLUMN created_at DROP DEFAULT;



