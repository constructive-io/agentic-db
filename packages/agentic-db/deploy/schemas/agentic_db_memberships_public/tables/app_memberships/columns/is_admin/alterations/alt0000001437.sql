-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_admin/alterations/alt0000001437
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_admin/column


COMMENT ON COLUMN agentic_db_memberships_public.app_memberships.is_admin IS 'Whether the actor has admin privileges on this entity';

