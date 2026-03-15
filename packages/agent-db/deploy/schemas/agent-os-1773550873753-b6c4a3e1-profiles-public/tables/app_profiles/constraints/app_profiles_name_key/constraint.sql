-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profiles/constraints/app_profiles_name_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profiles/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profiles 
  ADD CONSTRAINT app_profiles_name_key 
    UNIQUE (name);

