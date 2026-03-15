-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_grants/columns/membership_id/alterations/alt0000002030
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_grants/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_grants/columns/membership_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_grants 
  ALTER COLUMN membership_id SET NOT NULL;

