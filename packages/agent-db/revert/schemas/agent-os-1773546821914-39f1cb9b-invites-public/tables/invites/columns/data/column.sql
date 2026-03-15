-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/data/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
  DROP COLUMN data RESTRICT;


