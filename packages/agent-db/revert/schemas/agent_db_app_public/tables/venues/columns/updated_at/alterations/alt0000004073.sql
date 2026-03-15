-- Revert: schemas/agent_db_app_public/tables/venues/columns/updated_at/alterations/alt0000004073




ALTER TABLE "agent_db_app_public".venues 
    ALTER COLUMN updated_at DROP DEFAULT;



