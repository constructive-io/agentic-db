-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/indexes/invites_invite_valid_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/columns/invite_valid/column


CREATE INDEX invites_invite_valid_idx ON "agent-os-1773547105079-c748b4c3-invites-public".invites USING BTREE ( invite_valid );

