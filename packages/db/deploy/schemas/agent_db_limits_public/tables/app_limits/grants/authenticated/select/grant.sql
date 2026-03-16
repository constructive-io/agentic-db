-- Deploy: schemas/agent_db_limits_public/tables/app_limits/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limits/table


GRANT SELECT ON "agent_db_limits_public".app_limits TO authenticated;

