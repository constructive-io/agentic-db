-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_invites 
  DROP COLUMN id RESTRICT;


