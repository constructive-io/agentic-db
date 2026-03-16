-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/constraints/app_profiles_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table


ALTER TABLE "agent_db_profiles_public".app_profiles 
  ADD CONSTRAINT app_profiles_pkey PRIMARY KEY (id);

