-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_permissions/constraints/org_profile_permissions_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/table


ALTER TABLE "agent_db_profiles_public".org_profile_permissions 
  ADD CONSTRAINT org_profile_permissions_pkey PRIMARY KEY (id);

