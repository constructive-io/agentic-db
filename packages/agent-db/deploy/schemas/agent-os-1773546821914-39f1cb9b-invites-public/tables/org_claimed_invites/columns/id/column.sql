-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_claimed_invites 
  ADD COLUMN id uuid;

