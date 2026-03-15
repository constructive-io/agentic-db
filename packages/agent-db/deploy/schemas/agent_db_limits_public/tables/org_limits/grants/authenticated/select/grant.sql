-- Deploy: schemas/agent_db_limits_public/tables/org_limits/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limits/table


GRANT SELECT ON "agent_db_limits_public".org_limits TO authenticated;

