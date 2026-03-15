-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/is_approved/alterations/alt0000000088
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/is_approved/column


COMMENT ON COLUMN agent_db_memberships_public.app_membership_defaults.is_approved IS 'Whether new members are automatically approved upon joining';

