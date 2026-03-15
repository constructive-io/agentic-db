-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/claimed_invites/columns/data/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".claimed_invites 
  DROP COLUMN data RESTRICT;


