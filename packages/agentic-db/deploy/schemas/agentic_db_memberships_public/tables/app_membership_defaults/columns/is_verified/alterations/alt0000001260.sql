-- Deploy: schemas/agentic_db_memberships_public/tables/app_membership_defaults/columns/is_verified/alterations/alt0000001260
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_membership_defaults/columns/is_verified/column


COMMENT ON COLUMN agentic_db_memberships_public.app_membership_defaults.is_verified IS 'Whether new members are automatically verified upon joining';

