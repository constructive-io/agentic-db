-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/invite_valid/alterations/alt0000002370


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  ALTER COLUMN invite_valid DROP NOT NULL;


