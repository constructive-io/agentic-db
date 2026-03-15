-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/columns/created_at/alterations/alt0000000826
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/columns/created_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".org_claimed_invites 
  ALTER COLUMN created_at SET DEFAULT now();

