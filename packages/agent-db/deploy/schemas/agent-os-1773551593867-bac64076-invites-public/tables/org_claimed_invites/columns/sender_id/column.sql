-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/columns/sender_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/table


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_claimed_invites 
  ADD COLUMN sender_id uuid;

