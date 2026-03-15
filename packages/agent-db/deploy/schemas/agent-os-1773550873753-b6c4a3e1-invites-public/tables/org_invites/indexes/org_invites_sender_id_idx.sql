-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/indexes/org_invites_sender_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/columns/sender_id/column


CREATE INDEX org_invites_sender_id_idx ON "agent-os-1773550873753-b6c4a3e1-invites-public".org_invites USING BTREE ( sender_id );

