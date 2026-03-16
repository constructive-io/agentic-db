-- Deploy: schemas/agent_db_invites_public/tables/invites/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table


GRANT UPDATE ON "agent_db_invites_public".invites TO authenticated;

