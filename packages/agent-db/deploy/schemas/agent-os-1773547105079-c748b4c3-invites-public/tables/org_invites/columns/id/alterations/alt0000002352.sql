-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/columns/id/alterations/alt0000002352
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/columns/id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".org_invites 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

