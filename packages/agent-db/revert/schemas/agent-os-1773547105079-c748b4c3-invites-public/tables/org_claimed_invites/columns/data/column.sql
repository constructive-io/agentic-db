-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_claimed_invites/columns/data/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".org_claimed_invites 
  DROP COLUMN data RESTRICT;


