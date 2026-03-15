-- Deploy: schemas/agent_db_permissions_public/tables/app_permissions/columns/bitnum/alterations/alt0000000031
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/columns/bitnum/column


COMMENT ON COLUMN agent_db_permissions_public.app_permissions.bitnum IS E'Position of this permission in the bitmask (1-indexed), must be unique per permission set';

