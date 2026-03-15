-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/sender_id/alterations/alt0000002364


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  ALTER COLUMN sender_id DROP NOT NULL;


