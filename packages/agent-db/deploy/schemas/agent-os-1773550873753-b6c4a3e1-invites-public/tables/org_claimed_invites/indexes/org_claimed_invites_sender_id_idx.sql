-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/indexes/org_claimed_invites_sender_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/columns/sender_id/column


CREATE INDEX org_claimed_invites_sender_id_idx ON "agent-os-1773550873753-b6c4a3e1-invites-public".org_claimed_invites USING BTREE ( sender_id );

