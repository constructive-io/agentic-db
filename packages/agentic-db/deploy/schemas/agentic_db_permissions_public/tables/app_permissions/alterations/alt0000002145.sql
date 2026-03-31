-- Deploy: schemas/agentic_db_permissions_public/tables/app_permissions/alterations/alt0000002145
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/app_permissions/table


COMMENT ON TABLE agentic_db_permissions_public.app_permissions IS E'Defines available permissions as named bits within a bitmask, used by the RBAC system for access control';

