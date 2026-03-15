-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/invite_token/column


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  DROP COLUMN invite_token RESTRICT;


