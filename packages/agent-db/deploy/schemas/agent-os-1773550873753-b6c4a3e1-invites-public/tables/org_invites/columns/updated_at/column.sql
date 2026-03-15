-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".org_invites 
  ADD COLUMN updated_at timestamptz;

