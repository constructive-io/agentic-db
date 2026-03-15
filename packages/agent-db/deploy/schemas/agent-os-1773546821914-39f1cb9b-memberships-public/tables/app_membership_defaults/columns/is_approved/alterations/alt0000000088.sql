-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_membership_defaults/columns/is_approved/alterations/alt0000000088
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_membership_defaults/columns/is_approved/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-memberships-public".app_membership_defaults.is_approved IS 'Whether new members are automatically approved upon joining';

