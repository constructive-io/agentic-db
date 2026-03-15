-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/indexes/claimed_invites_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/columns/created_at/column


CREATE INDEX claimed_invites_created_at_idx ON "agent-os-1773546821914-39f1cb9b-invites-public".claimed_invites ( created_at );

