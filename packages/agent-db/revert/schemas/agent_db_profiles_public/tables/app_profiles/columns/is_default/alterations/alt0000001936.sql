-- Revert: schemas/agent_db_profiles_public/tables/app_profiles/columns/is_default/alterations/alt0000001936




ALTER TABLE "agent_db_profiles_public".app_profiles 
    ALTER COLUMN is_default DROP DEFAULT;



