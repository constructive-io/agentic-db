-- Deploy: schemas/agent_db_permissions_public/tables/app_permissions/constraints/app_permissions_bitnum_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/table


ALTER TABLE "agent_db_permissions_public".app_permissions 
  ADD CONSTRAINT app_permissions_bitnum_key 
    UNIQUE (bitnum);

