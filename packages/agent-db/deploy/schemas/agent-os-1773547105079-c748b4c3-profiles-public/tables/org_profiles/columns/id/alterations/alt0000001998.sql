-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/columns/id/alterations/alt0000001998
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/columns/id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profiles 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

