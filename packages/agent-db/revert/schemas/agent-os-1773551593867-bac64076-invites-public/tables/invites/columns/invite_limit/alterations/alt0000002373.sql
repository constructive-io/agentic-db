-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/invite_limit/alterations/alt0000002373


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  ALTER COLUMN invite_limit DROP NOT NULL;


