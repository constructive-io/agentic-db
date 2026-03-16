-- Revert: schemas/agent_db_app_public/tables/chat_messages/columns/created_at/alterations/alt0000002002




ALTER TABLE "agent_db_app_public".chat_messages 
    ALTER COLUMN created_at DROP DEFAULT;



