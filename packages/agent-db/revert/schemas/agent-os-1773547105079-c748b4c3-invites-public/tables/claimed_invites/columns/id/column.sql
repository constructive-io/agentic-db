-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/claimed_invites/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".claimed_invites 
  DROP COLUMN id RESTRICT;


