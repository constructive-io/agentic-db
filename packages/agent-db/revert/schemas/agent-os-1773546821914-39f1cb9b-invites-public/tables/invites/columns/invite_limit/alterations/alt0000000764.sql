-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/invite_limit/alterations/alt0000000764


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
  ALTER COLUMN invite_limit DROP NOT NULL;


