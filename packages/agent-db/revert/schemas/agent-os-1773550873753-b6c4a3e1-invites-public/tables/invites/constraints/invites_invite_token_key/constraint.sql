-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/constraints/invites_invite_token_key/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".invites 
  DROP CONSTRAINT invites_invite_token_key;


