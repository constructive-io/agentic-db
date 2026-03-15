-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/constraints/org_invites_invite_token_key/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_invites 
  DROP CONSTRAINT org_invites_invite_token_key;


