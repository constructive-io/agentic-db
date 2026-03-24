-- Revert: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/columns/id/alterations/alt0000001805


ALTER TABLE agentic_db_profiles_public.org_profile_definition_grants 
  ALTER COLUMN id DROP NOT NULL;


