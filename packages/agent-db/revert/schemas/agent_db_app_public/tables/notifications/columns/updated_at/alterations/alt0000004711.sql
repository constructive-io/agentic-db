-- Revert: schemas/agent_db_app_public/tables/notifications/columns/updated_at/alterations/alt0000004711




ALTER TABLE "agent_db_app_public".notifications 
    ALTER COLUMN updated_at DROP DEFAULT;



