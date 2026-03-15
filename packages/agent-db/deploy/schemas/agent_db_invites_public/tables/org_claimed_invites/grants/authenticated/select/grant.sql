-- Deploy: schemas/agent_db_invites_public/tables/org_claimed_invites/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/table


GRANT SELECT ON agent_db_invites_public.org_claimed_invites TO authenticated;

