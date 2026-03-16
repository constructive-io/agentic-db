-- Deploy: schemas/agent_db_permissions_public/tables/org_permission_defaults/alterations/alt0000001138
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permission_defaults/table


COMMENT ON TABLE "agent_db_permissions_public".org_permission_defaults IS 'Stores the default permission bitmask assigned to new members upon joining';

