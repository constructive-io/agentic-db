-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/indexes/org_claimed_invites_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/columns/updated_at/column


CREATE INDEX org_claimed_invites_updated_at_idx ON "agent-os-1773551593867-bac64076-invites-public".org_claimed_invites ( updated_at );

