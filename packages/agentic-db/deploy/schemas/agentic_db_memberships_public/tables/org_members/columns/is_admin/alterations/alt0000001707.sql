-- Deploy: schemas/agentic_db_memberships_public/tables/org_members/columns/is_admin/alterations/alt0000001707
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_members/columns/is_admin/column


COMMENT ON COLUMN agentic_db_memberships_public.org_members.is_admin IS 'Whether this member has admin privileges';

