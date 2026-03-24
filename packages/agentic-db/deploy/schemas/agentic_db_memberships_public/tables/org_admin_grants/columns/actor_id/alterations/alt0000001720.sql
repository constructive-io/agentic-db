-- Deploy: schemas/agentic_db_memberships_public/tables/org_admin_grants/columns/actor_id/alterations/alt0000001720
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_admin_grants/columns/actor_id/column


COMMENT ON COLUMN agentic_db_memberships_public.org_admin_grants.actor_id IS 'The member receiving or losing the admin grant';

