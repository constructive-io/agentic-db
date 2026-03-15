-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_membership_defaults/columns/is_verified/alterations/alt0000001652
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_membership_defaults/columns/is_verified/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-memberships-public".app_membership_defaults.is_verified IS 'Whether new members are automatically verified upon joining';

