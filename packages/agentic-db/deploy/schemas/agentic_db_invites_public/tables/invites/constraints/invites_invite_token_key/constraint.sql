-- Deploy: schemas/agentic_db_invites_public/tables/invites/constraints/invites_invite_token_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table


ALTER TABLE agentic_db_invites_public.invites 
  ADD CONSTRAINT invites_invite_token_key 
    UNIQUE (invite_token);

