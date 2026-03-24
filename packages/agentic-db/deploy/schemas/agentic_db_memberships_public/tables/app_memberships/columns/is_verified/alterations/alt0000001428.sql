-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_verified/alterations/alt0000001428
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_verified/column


COMMENT ON COLUMN agentic_db_memberships_public.app_memberships.is_verified IS E'Whether this member has been verified (e.g. email confirmation)';

