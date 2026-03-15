-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/claimed_invites/columns/data/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/claimed_invites/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".claimed_invites 
  ADD COLUMN data json;

