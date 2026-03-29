-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_active/alterations/alt0000004578
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_active/column


COMMENT ON COLUMN agentic_db_memberships_public.org_memberships.is_active IS E'Computed field indicating the membership is approved, verified, not banned, and not disabled';

