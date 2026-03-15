-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/constraints/org_invites_invite_token_key/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".org_invites 
  DROP CONSTRAINT org_invites_invite_token_key;


