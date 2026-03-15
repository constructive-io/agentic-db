-- Revert: schemas/agent_db_app_public/tables/messages/columns/updated_at/alterations/alt0000001161




ALTER TABLE agent_db_app_public.messages 
    ALTER COLUMN updated_at DROP DEFAULT;



