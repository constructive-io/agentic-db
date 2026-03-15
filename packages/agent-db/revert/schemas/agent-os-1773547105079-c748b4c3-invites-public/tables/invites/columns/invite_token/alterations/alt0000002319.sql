-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/columns/invite_token/alterations/alt0000002319


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".invites 
  ALTER COLUMN invite_token DROP NOT NULL;


