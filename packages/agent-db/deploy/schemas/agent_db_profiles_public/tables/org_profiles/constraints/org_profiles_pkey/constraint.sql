-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/constraints/org_profiles_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table


ALTER TABLE agent_db_profiles_public.org_profiles 
  ADD CONSTRAINT org_profiles_pkey PRIMARY KEY (id);

