-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permissions/columns/bitnum/alterations/alt0000001640
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permissions/columns/bitnum/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-permissions-public".app_permissions.bitnum IS E'Position of this permission in the bitmask (1-indexed), must be unique per permission set';

