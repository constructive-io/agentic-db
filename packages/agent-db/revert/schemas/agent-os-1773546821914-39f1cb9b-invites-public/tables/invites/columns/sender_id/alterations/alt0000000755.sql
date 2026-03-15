-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/sender_id/alterations/alt0000000755


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
  ALTER COLUMN sender_id DROP NOT NULL;


