-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/is_verified/alterations/alt0000003309
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/is_verified/column


COMMENT ON COLUMN "agent_db_memberships_public".app_membership_defaults.is_verified IS 'Whether new members are automatically verified upon joining';

