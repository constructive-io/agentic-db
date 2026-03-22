-- Revert: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/columns/permission_id/column


ALTER TABLE agentic_db_profiles_public.org_profile_definition_grants 
  DROP COLUMN permission_id RESTRICT;


