-- Deploy: schemas/agentic_db_limits_public/tables/app_limits/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limits/table


GRANT SELECT ON "agentic_db_limits_public".app_limits TO authenticated;

