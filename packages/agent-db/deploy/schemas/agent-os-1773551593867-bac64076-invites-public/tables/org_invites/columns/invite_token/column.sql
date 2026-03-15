-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/invite_token/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/table


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_invites 
  ADD COLUMN invite_token text;

