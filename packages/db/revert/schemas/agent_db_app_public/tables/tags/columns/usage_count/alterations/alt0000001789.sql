-- Revert: schemas/agent_db_app_public/tables/tags/columns/usage_count/alterations/alt0000001789




ALTER TABLE "agent_db_app_public".tags 
    ALTER COLUMN usage_count DROP DEFAULT;



