-- Deploy: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/is_approved/alterations/alt0000000340
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/is_approved/column


COMMENT ON COLUMN "agentic_db_memberships_public".org_membership_defaults.is_approved IS 'Whether new members are automatically approved upon joining';

