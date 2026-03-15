-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_claimed_invites/columns/created_at/alterations/alt0000002387


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".org_claimed_invites 
  ALTER COLUMN created_at DROP DEFAULT;


