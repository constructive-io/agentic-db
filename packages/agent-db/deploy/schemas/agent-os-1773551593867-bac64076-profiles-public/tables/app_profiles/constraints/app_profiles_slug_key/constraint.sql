-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/constraints/app_profiles_slug_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/table


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profiles 
  ADD CONSTRAINT app_profiles_slug_key 
    UNIQUE (slug);

