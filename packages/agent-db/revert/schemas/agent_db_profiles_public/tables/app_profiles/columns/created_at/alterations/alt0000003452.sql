-- Revert: schemas/agent_db_profiles_public/tables/app_profiles/columns/created_at/alterations/alt0000003452


ALTER TABLE "agent_db_profiles_public".app_profiles 
  ALTER COLUMN created_at DROP DEFAULT;


