-- Revert: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/columns/profile_id/alterations/alt0000002196


ALTER TABLE agentic_db_profiles_public.org_profile_definition_grants 
  ALTER COLUMN profile_id DROP NOT NULL;


