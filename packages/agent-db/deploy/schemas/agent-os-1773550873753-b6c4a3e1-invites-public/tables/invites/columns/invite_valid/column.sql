-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/columns/invite_valid/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".invites 
  ADD COLUMN invite_valid boolean;

