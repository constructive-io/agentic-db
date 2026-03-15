-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/constraints/invites_invite_token_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
  ADD CONSTRAINT invites_invite_token_key 
    UNIQUE (invite_token);

