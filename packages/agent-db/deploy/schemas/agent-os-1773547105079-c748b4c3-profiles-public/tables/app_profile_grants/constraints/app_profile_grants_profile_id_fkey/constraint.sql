-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_grants/constraints/app_profile_grants_profile_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_grants/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_grants 
  ADD CONSTRAINT app_profile_grants_profile_id_fkey 
    FOREIGN KEY(profile_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-profiles-public".app_profiles (id) 
    ON DELETE CASCADE;

