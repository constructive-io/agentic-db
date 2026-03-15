-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/claimed_invites/columns/created_at/alterations/alt0000002347


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".claimed_invites 
  ALTER COLUMN created_at DROP DEFAULT;


