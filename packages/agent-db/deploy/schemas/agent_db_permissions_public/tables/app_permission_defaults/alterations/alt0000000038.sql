-- Deploy: schemas/agent_db_permissions_public/tables/app_permission_defaults/alterations/alt0000000038
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permission_defaults/table


COMMENT ON TABLE agent_db_permissions_public.app_permission_defaults IS 'Stores the default permission bitmask assigned to new members upon joining';

