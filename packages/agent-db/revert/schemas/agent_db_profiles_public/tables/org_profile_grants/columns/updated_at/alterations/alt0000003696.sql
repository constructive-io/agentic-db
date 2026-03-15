-- Revert: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/updated_at/alterations/alt0000003696


ALTER TABLE "agent_db_profiles_public".org_profile_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


