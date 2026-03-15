-- Deploy: schemas/agent_db_invites_public/tables/org_invites/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table


GRANT DELETE ON agent_db_invites_public.org_invites TO authenticated;

