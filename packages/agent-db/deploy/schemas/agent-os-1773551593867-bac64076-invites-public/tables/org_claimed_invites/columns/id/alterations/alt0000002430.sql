-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/columns/id/alterations/alt0000002430
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_claimed_invites 
  ALTER COLUMN id SET NOT NULL;

