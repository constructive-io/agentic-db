-- Deploy: schemas/agent_db_invites_public/tables/org_invites/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table


GRANT INSERT (email, expires_at, multiple, invite_limit, entity_id, receiver_id) ON "agent_db_invites_public".org_invites TO authenticated;

