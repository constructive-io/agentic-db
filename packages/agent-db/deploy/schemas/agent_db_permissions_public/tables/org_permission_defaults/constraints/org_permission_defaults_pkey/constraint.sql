-- Deploy: schemas/agent_db_permissions_public/tables/org_permission_defaults/constraints/org_permission_defaults_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permission_defaults/table


ALTER TABLE agent_db_permissions_public.org_permission_defaults 
  ADD CONSTRAINT org_permission_defaults_pkey PRIMARY KEY (id);

