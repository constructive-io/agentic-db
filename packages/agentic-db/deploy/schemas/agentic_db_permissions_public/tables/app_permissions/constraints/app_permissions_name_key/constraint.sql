-- Deploy: schemas/agentic_db_permissions_public/tables/app_permissions/constraints/app_permissions_name_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/app_permissions/table


ALTER TABLE agentic_db_permissions_public.app_permissions 
  ADD CONSTRAINT app_permissions_name_key 
    UNIQUE (name);

