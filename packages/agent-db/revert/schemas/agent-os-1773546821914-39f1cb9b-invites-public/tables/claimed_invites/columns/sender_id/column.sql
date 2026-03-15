-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/columns/sender_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".claimed_invites 
  DROP COLUMN sender_id RESTRICT;


