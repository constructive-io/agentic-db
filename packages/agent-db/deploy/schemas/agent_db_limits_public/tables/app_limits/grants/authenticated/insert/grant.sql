-- Deploy: schemas/agent_db_limits_public/tables/app_limits/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limits/table


GRANT INSERT ON agent_db_limits_public.app_limits TO authenticated;

