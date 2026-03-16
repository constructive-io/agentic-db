-- Revert: schemas/agent_db_app_public/tables/venues/columns/is_favorite/alterations/alt0000001758




ALTER TABLE "agent_db_app_public".venues 
    ALTER COLUMN is_favorite DROP DEFAULT;



