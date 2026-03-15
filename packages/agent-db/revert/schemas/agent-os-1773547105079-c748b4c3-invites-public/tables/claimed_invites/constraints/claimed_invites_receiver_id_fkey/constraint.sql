-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/claimed_invites/constraints/claimed_invites_receiver_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".claimed_invites 
  DROP CONSTRAINT claimed_invites_receiver_id_fkey;


