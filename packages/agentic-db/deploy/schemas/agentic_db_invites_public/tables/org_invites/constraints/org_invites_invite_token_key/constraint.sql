-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/constraints/org_invites_invite_token_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table


ALTER TABLE agentic_db_invites_public.org_invites 
  ADD CONSTRAINT org_invites_invite_token_key 
    UNIQUE (invite_token);

