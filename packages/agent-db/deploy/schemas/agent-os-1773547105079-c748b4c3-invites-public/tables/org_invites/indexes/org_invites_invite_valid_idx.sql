-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/indexes/org_invites_invite_valid_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/columns/invite_valid/column


CREATE INDEX org_invites_invite_valid_idx ON "agent-os-1773547105079-c748b4c3-invites-public".org_invites USING BTREE ( invite_valid );

