-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/constraints/claimed_invites_receiver_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".claimed_invites 
  DROP CONSTRAINT claimed_invites_receiver_id_fkey;


