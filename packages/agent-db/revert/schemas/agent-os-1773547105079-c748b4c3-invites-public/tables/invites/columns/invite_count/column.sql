-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/columns/invite_count/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".invites 
  DROP COLUMN invite_count RESTRICT;


