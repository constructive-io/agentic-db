-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/invite_token/alterations/alt0000000758


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
  ALTER COLUMN invite_token DROP NOT NULL;


