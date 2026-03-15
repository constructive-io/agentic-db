-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/columns/updated_at/alterations/alt0000002339


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".invites 
  ALTER COLUMN updated_at DROP DEFAULT;


