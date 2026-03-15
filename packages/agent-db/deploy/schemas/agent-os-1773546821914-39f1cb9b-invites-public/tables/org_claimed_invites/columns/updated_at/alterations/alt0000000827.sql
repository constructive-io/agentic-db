-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/columns/updated_at/alterations/alt0000000827
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/columns/updated_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_claimed_invites 
  ALTER COLUMN updated_at SET DEFAULT now();

