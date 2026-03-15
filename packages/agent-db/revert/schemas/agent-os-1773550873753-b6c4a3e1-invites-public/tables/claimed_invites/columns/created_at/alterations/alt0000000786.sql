-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/claimed_invites/columns/created_at/alterations/alt0000000786


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".claimed_invites 
  ALTER COLUMN created_at DROP DEFAULT;


