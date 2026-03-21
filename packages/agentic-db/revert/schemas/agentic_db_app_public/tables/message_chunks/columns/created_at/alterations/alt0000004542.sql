-- Revert: schemas/agentic_db_app_public/tables/message_chunks/columns/created_at/alterations/alt0000004542




ALTER TABLE agentic_db_app_public.message_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



