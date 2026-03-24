-- Deploy: schemas/agentic_db_permissions_public/tables/app_permission_defaults/constraints/app_permission_defaults_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/app_permission_defaults/table


ALTER TABLE "agentic_db_permissions_public".app_permission_defaults 
  ADD CONSTRAINT app_permission_defaults_pkey PRIMARY KEY (id);

