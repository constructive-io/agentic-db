-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/expires_at/alterations/alt0000000774
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/expires_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
  ALTER COLUMN expires_at SET NOT NULL;

