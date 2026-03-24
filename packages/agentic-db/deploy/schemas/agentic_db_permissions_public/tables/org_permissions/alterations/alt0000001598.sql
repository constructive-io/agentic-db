-- Deploy: schemas/agentic_db_permissions_public/tables/org_permissions/alterations/alt0000001598
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


COMMENT ON TABLE agentic_db_permissions_public.org_permissions IS E'Defines available permissions as named bits within a bitmask, used by the RBAC system for access control';

