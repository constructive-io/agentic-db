-- Deploy: schemas/agent_db_permissions_public/tables/app_permissions/alterations/alt0000003244
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/table


COMMENT ON TABLE "agent_db_permissions_public".app_permissions IS E'Defines available permissions as named bits within a bitmask, used by the RBAC system for access control';

