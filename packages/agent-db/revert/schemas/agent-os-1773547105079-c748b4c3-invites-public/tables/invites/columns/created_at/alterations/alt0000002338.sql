-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/columns/created_at/alterations/alt0000002338


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".invites 
  ALTER COLUMN created_at DROP DEFAULT;


