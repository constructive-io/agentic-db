-- Revert: schemas/agentic_db_app_public/tables/messages/columns/created_at/alterations/alt0000003679




ALTER TABLE agentic_db_app_public.messages 
    ALTER COLUMN created_at DROP DEFAULT;



