-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/indexes/org_invites_expires_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/expires_at/column


CREATE INDEX org_invites_expires_at_idx ON "agent-os-1773551593867-bac64076-invites-public".org_invites USING BTREE ( expires_at );

