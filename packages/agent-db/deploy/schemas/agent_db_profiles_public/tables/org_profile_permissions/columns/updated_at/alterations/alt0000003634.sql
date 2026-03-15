-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/updated_at/alterations/alt0000003634
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/table
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/updated_at/column


ALTER TABLE "agent_db_profiles_public".org_profile_permissions 
  ALTER COLUMN updated_at SET DEFAULT now();

