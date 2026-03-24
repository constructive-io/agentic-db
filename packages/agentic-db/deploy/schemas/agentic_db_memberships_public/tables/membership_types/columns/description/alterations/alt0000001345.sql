-- Deploy: schemas/agentic_db_memberships_public/tables/membership_types/columns/description/alterations/alt0000001345
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/columns/description/column


COMMENT ON COLUMN agentic_db_memberships_public.membership_types.description IS 'Description of what this membership type represents';

