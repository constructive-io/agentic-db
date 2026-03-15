-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/columns/created_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".invites 
  DROP COLUMN created_at RESTRICT;


