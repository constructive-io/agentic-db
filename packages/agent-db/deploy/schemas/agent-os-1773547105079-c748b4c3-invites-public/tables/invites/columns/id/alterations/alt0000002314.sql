-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/columns/id/alterations/alt0000002314
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/columns/id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".invites 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

