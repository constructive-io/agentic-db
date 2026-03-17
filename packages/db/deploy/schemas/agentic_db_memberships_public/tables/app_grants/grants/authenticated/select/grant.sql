-- Deploy: schemas/agentic_db_memberships_public/tables/app_grants/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_grants/table


GRANT SELECT ON "agentic_db_memberships_public".app_grants TO authenticated;

