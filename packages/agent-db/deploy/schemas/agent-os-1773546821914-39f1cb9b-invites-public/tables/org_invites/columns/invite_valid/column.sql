-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/columns/invite_valid/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_invites 
  ADD COLUMN invite_valid boolean;

