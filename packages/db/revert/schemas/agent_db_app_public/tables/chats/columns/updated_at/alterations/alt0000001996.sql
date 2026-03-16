-- Revert: schemas/agent_db_app_public/tables/chats/columns/updated_at/alterations/alt0000001996




ALTER TABLE "agent_db_app_public".chats 
    ALTER COLUMN updated_at DROP DEFAULT;



