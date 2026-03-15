-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/indexes/org_claimed_invites_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/columns/created_at/column


CREATE INDEX org_claimed_invites_created_at_idx ON "agent-os-1773550873753-b6c4a3e1-invites-public".org_claimed_invites ( created_at );

