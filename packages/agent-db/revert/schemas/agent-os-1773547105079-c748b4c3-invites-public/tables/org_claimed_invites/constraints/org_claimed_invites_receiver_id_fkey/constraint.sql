-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_claimed_invites/constraints/org_claimed_invites_receiver_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".org_claimed_invites 
  DROP CONSTRAINT org_claimed_invites_receiver_id_fkey;


