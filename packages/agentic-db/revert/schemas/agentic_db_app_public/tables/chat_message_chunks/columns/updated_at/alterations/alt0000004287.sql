-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/updated_at/alterations/alt0000004287




ALTER TABLE agentic_db_app_public.chat_message_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



