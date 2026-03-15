-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/constraints/invites_sender_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
  DROP CONSTRAINT invites_sender_id_fkey;


