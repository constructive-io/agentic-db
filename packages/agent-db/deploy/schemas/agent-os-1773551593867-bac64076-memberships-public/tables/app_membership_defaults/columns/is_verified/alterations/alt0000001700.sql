-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_membership_defaults/columns/is_verified/alterations/alt0000001700
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_membership_defaults/columns/is_verified/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-public".app_membership_defaults.is_verified IS 'Whether new members are automatically verified upon joining';

