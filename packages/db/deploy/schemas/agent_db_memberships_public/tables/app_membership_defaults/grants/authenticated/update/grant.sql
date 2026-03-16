-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/table


GRANT UPDATE ON "agent_db_memberships_public".app_membership_defaults TO authenticated;

