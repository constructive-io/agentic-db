-- Revert: schemas/agent_db_profiles_public/tables/app_profiles/columns/updated_at/alterations/alt0000003453


ALTER TABLE "agent_db_profiles_public".app_profiles 
  ALTER COLUMN updated_at DROP DEFAULT;


