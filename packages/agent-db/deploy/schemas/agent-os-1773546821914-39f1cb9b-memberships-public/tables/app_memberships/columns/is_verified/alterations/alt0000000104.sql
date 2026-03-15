-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/columns/is_verified/alterations/alt0000000104
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/columns/is_verified/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships.is_verified IS E'Whether this member has been verified (e.g. email confirmation)';

