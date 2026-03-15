-- Deploy: schemas/agent_db_permissions_public/tables/org_permissions/constraints/org_permissions_bitnum_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/table


ALTER TABLE "agent_db_permissions_public".org_permissions 
  ADD CONSTRAINT org_permissions_bitnum_key 
    UNIQUE (bitnum);

