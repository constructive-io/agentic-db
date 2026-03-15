-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/columns/data/column


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_claimed_invites 
  DROP COLUMN data RESTRICT;


