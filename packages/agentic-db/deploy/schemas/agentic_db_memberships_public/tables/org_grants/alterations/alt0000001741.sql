-- Deploy: schemas/agentic_db_memberships_public/tables/org_grants/alterations/alt0000001741
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_grants/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


COMMENT ON TABLE agentic_db_memberships_public.org_grants IS 'Records of individual permission grants and revocations for members via bitmask';

