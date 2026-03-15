-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/constraints/app_profiles_slug_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table


ALTER TABLE "agent_db_profiles_public".app_profiles 
  ADD CONSTRAINT app_profiles_slug_key 
    UNIQUE (slug);

