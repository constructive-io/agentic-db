-- Deploy: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/is_admin/alterations/alt0000001404
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/is_admin/column


COMMENT ON COLUMN agentic_db_memberships_private.app_memberships_sprt.is_admin IS 'Whether the actor has admin privileges on the entity';

