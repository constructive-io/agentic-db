-- Revert: schemas/agent_db_app_public/tables/notifications/columns/created_at/alterations/alt0000004757




ALTER TABLE "agent_db_app_public".notifications 
    ALTER COLUMN created_at DROP DEFAULT;



