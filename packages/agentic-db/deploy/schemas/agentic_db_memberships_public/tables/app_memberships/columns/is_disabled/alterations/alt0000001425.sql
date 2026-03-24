-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_disabled/alterations/alt0000001425
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_disabled/column


COMMENT ON COLUMN agentic_db_memberships_public.app_memberships.is_disabled IS 'Whether this membership is temporarily disabled';

