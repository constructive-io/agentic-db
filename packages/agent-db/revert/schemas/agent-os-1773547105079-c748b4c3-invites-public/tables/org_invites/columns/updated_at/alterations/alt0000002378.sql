-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/columns/updated_at/alterations/alt0000002378


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".org_invites 
  ALTER COLUMN updated_at DROP DEFAULT;


