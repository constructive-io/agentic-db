-- Revert: schemas/agentic_db_app_public/tables/messages/columns/updated_at/alterations/alt0000003133




ALTER TABLE agentic_db_app_public.messages 
    ALTER COLUMN updated_at DROP DEFAULT;



