-- Revert: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/columns/created_at/column


ALTER TABLE "agentic_db_profiles_public".org_profile_definition_grants 
  DROP COLUMN created_at RESTRICT;


