-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/constraints/org_invites_sender_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".org_invites 
  DROP CONSTRAINT org_invites_sender_id_fkey;


