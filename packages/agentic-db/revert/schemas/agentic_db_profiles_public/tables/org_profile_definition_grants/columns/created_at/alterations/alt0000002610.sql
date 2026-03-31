-- Revert: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/columns/created_at/alterations/alt0000002610


ALTER TABLE agentic_db_profiles_public.org_profile_definition_grants 
  ALTER COLUMN created_at DROP DEFAULT;


