-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/columns/expires_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".invites 
  DROP COLUMN expires_at RESTRICT;


