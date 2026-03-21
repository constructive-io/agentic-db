-- Revert: schemas/agentic_db_app_public/tables/chat_messages/columns/created_at/alterations/alt0000002146




ALTER TABLE "agentic_db_app_public".chat_messages 
    ALTER COLUMN created_at DROP DEFAULT;



