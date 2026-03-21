-- Deploy: schemas/agentic_db_memberships_public/tables/app_owner_grants/columns/actor_id/alterations/alt0000002974
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_owner_grants/columns/actor_id/column


COMMENT ON COLUMN agentic_db_memberships_public.app_owner_grants.actor_id IS 'The member receiving or losing the ownership grant';

