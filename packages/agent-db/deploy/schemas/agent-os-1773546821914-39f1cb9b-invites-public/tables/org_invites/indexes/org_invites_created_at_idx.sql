-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/indexes/org_invites_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/columns/created_at/column


CREATE INDEX org_invites_created_at_idx ON "agent-os-1773546821914-39f1cb9b-invites-public".org_invites ( created_at );

