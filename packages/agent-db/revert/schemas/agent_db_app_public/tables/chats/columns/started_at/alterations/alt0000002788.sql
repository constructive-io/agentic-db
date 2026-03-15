-- Revert: schemas/agent_db_app_public/tables/chats/columns/started_at/alterations/alt0000002788




ALTER TABLE "agent_db_app_public".chats 
    ALTER COLUMN started_at DROP DEFAULT;



