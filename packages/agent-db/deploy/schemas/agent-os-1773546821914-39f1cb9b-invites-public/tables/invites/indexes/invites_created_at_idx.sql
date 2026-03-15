-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/indexes/invites_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/created_at/column


CREATE INDEX invites_created_at_idx ON "agent-os-1773546821914-39f1cb9b-invites-public".invites ( created_at );

