-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/multiple/alterations/alt0000000770


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
  ALTER COLUMN multiple DROP NOT NULL;


