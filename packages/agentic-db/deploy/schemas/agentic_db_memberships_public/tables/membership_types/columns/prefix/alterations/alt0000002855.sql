-- Deploy: schemas/agentic_db_memberships_public/tables/membership_types/columns/prefix/alterations/alt0000002855
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/columns/prefix/column


COMMENT ON COLUMN agentic_db_memberships_public.membership_types.prefix IS 'Short prefix used to namespace tables and functions for this membership scope';

