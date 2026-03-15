-- Revert: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/created_at/alterations/alt0000003647


ALTER TABLE "agent_db_profiles_public".org_profile_grants 
  ALTER COLUMN created_at DROP DEFAULT;


