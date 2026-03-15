-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/constraints/org_invites_invite_token_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/table


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_invites 
  ADD CONSTRAINT org_invites_invite_token_key 
    UNIQUE (invite_token);

