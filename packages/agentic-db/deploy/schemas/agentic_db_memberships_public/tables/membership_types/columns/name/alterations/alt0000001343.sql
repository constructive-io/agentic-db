-- Deploy: schemas/agentic_db_memberships_public/tables/membership_types/columns/name/alterations/alt0000001343
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/columns/name/column


COMMENT ON COLUMN agentic_db_memberships_public.membership_types.name IS E'Human-readable name of the membership type';

