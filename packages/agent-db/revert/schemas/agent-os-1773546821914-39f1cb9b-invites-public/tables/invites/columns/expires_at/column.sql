-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/expires_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
  DROP COLUMN expires_at RESTRICT;


