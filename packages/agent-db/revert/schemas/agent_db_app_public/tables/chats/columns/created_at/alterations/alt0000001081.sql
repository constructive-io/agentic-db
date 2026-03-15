-- Revert: schemas/agent_db_app_public/tables/chats/columns/created_at/alterations/alt0000001081




ALTER TABLE agent_db_app_public.chats 
    ALTER COLUMN created_at DROP DEFAULT;



