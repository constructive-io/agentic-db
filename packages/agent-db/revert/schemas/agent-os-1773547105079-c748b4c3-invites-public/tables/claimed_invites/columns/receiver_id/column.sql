-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/claimed_invites/columns/receiver_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".claimed_invites 
  DROP COLUMN receiver_id RESTRICT;


