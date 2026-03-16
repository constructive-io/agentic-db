-- Revert: schemas/agent_db_app_public/tables/messages/columns/created_at/alterations/alt0000002194




ALTER TABLE "agent_db_app_public".messages 
    ALTER COLUMN created_at DROP DEFAULT;



