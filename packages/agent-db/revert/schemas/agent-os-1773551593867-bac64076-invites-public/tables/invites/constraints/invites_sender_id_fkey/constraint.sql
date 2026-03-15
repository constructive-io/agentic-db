-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/constraints/invites_sender_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  DROP CONSTRAINT invites_sender_id_fkey;


