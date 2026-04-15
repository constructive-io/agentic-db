-- Deploy: schemas/agentic_db_memberships_public/tables/app_admin_grants/columns/actor_id/alterations/alt0000012136
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_admin_grants/columns/actor_id/column


COMMENT ON COLUMN agentic_db_memberships_public.app_admin_grants.actor_id IS 'The member receiving or losing the admin grant';

