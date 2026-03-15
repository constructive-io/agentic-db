-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_invites 
  DROP COLUMN created_at RESTRICT;


