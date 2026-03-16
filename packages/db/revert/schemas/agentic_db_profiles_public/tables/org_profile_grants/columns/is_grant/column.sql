-- Revert: schemas/agentic_db_profiles_public/tables/org_profile_grants/columns/is_grant/column


ALTER TABLE "agentic_db_profiles_public".org_profile_grants 
  DROP COLUMN is_grant RESTRICT;


