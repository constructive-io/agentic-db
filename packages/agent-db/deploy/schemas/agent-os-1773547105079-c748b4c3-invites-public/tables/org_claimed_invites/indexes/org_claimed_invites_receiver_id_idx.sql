-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_claimed_invites/indexes/org_claimed_invites_receiver_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_claimed_invites/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_claimed_invites/columns/receiver_id/column


CREATE INDEX org_claimed_invites_receiver_id_idx ON "agent-os-1773547105079-c748b4c3-invites-public".org_claimed_invites USING BTREE ( receiver_id );

