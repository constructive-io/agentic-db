-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_claimed_invites/columns/updated_at/alterations/alt0000002388


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".org_claimed_invites 
  ALTER COLUMN updated_at DROP DEFAULT;


