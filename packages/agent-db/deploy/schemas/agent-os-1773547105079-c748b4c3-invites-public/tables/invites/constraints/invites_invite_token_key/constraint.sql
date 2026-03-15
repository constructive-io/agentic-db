-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/constraints/invites_invite_token_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".invites 
  ADD CONSTRAINT invites_invite_token_key 
    UNIQUE (invite_token);

