-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/claimed_invites/columns/id/alterations/alt0000000781


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".claimed_invites 
  ALTER COLUMN id DROP NOT NULL;


