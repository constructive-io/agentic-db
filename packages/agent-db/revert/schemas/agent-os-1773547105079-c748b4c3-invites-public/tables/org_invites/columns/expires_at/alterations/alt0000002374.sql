-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/columns/expires_at/alterations/alt0000002374


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".org_invites 
  ALTER COLUMN expires_at DROP NOT NULL;


