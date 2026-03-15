-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/constraints/invites_sender_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".invites 
  DROP CONSTRAINT invites_sender_id_fkey;


