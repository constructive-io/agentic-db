-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/constraints/org_invites_invite_token_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".org_invites 
  ADD CONSTRAINT org_invites_invite_token_key 
    UNIQUE (invite_token);

