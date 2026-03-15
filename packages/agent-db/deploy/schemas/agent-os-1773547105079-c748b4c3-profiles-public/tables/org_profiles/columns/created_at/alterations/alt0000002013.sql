-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/columns/created_at/alterations/alt0000002013
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/columns/created_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profiles 
  ALTER COLUMN created_at SET DEFAULT now();

