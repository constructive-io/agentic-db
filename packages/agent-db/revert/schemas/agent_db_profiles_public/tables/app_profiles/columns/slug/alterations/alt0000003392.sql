-- Revert: schemas/agent_db_profiles_public/tables/app_profiles/columns/slug/alterations/alt0000003392


ALTER TABLE "agent_db_profiles_public".app_profiles 
  ALTER COLUMN slug DROP NOT NULL;


