-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_grants/constraints/app_profile_grants_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_grants/table


ALTER TABLE agent_db_profiles_public.app_profile_grants 
  ADD CONSTRAINT app_profile_grants_pkey PRIMARY KEY (id);

