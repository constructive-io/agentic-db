-- Deploy: schemas/agentic_db_invites_public/tables/invites/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table


GRANT INSERT (email, expires_at, multiple, invite_limit) ON agentic_db_invites_public.invites TO authenticated;

