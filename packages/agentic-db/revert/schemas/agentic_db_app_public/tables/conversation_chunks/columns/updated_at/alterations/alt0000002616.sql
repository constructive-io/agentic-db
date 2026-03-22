-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/columns/updated_at/alterations/alt0000002616




ALTER TABLE agentic_db_app_public.conversation_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



