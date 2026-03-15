-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/columns/id/alterations/alt0000002430


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_claimed_invites 
  ALTER COLUMN id DROP NOT NULL;


