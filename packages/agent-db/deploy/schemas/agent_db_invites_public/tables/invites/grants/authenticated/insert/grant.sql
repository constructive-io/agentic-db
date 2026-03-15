-- Deploy: schemas/agent_db_invites_public/tables/invites/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table


GRANT INSERT (email, expires_at, multiple, invite_limit) ON agent_db_invites_public.invites TO authenticated;

