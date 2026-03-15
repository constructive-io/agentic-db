-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/constraints/org_memberships_profile_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships 
  ADD CONSTRAINT org_memberships_profile_id_fkey 
    FOREIGN KEY(profile_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-profiles-public".org_profiles (id) 
    ON DELETE CASCADE;

