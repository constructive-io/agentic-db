-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_definition_grants/constraints/app_profile_definition_grants_profile_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_definition_grants/table


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_definition_grants 
  ADD CONSTRAINT app_profile_definition_grants_profile_id_fkey 
    FOREIGN KEY(profile_id) 
    REFERENCES "agent-os-1773551593867-bac64076-profiles-public".app_profiles (id) 
    ON DELETE CASCADE;

