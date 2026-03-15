-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/indexes/org_invites_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/columns/updated_at/column


CREATE INDEX org_invites_updated_at_idx ON "agent-os-1773547105079-c748b4c3-invites-public".org_invites ( updated_at );

