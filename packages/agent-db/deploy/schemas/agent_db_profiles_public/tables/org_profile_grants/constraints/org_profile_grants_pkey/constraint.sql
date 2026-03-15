-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_grants/constraints/org_profile_grants_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/table


ALTER TABLE agent_db_profiles_public.org_profile_grants 
  ADD CONSTRAINT org_profile_grants_pkey PRIMARY KEY (id);

