-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/claimed_invites/indexes/claimed_invites_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/claimed_invites/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/claimed_invites/columns/created_at/column


CREATE INDEX claimed_invites_created_at_idx ON "agent-os-1773550873753-b6c4a3e1-invites-public".claimed_invites ( created_at );

