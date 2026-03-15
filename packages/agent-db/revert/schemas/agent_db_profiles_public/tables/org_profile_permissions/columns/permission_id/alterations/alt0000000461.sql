-- Revert: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/permission_id/alterations/alt0000000461


ALTER TABLE agent_db_profiles_public.org_profile_permissions 
  ALTER COLUMN permission_id DROP NOT NULL;


