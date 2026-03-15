-- Revert: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/id/alterations/alt0000003675


ALTER TABLE "agent_db_profiles_public".org_profile_permissions 
  ALTER COLUMN id DROP NOT NULL;


