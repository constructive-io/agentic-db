-- Deploy: schemas/agentic_db_memberships_public/tables/app_admin_grants/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_admin_grants/table


GRANT SELECT ON agentic_db_memberships_public.app_admin_grants TO authenticated;

