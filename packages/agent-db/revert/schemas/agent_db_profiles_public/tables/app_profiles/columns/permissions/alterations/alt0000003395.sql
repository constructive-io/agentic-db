-- Revert: schemas/agent_db_profiles_public/tables/app_profiles/columns/permissions/alterations/alt0000003395


ALTER TABLE "agent_db_profiles_public".app_profiles 
  ALTER COLUMN permissions DROP NOT NULL;


