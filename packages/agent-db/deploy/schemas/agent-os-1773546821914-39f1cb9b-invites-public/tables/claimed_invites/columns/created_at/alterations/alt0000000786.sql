-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/columns/created_at/alterations/alt0000000786
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/columns/created_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".claimed_invites 
  ALTER COLUMN created_at SET DEFAULT now();

