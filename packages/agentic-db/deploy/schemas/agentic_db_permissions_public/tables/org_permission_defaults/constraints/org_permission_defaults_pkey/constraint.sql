-- Deploy: schemas/agentic_db_permissions_public/tables/org_permission_defaults/constraints/org_permission_defaults_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_permissions_public/tables/org_permission_defaults/table


ALTER TABLE agentic_db_permissions_public.org_permission_defaults 
  ADD CONSTRAINT org_permission_defaults_pkey PRIMARY KEY (id);

