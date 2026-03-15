-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/constraints/invites_invite_token_key/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  DROP CONSTRAINT invites_invite_token_key;


