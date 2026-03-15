-- Deploy: schemas/agent_db_limits_public/tables/org_limit_defaults/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limit_defaults/table


GRANT INSERT ON "agent_db_limits_public".org_limit_defaults TO authenticated;

