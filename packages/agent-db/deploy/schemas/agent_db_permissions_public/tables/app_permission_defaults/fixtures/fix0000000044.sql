-- Deploy: schemas/agent_db_permissions_public/tables/app_permission_defaults/fixtures/fix0000000044
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permission_defaults/table


INSERT INTO agent_db_permissions_public.app_permission_defaults (
  permissions
)
VALUES
  (DEFAULT);

