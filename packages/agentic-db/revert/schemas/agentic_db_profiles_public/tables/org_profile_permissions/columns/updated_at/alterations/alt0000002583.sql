-- Revert: schemas/agentic_db_profiles_public/tables/org_profile_permissions/columns/updated_at/alterations/alt0000002583


ALTER TABLE agentic_db_profiles_public.org_profile_permissions 
  ALTER COLUMN updated_at DROP DEFAULT;


