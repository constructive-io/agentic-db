-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/invite_count/alterations/alt0000002376


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  ALTER COLUMN invite_count DROP NOT NULL;


