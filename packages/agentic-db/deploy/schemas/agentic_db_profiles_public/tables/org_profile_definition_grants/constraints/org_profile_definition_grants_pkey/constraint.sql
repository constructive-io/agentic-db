-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/constraints/org_profile_definition_grants_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/table


ALTER TABLE agentic_db_profiles_public.org_profile_definition_grants 
  ADD CONSTRAINT org_profile_definition_grants_pkey PRIMARY KEY (id);

