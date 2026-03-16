-- Revert: schemas/agent_db_permissions_public/tables/org_permissions/constraints/org_permissions_pkey/constraint


ALTER TABLE "agent_db_permissions_public".org_permissions 
  DROP CONSTRAINT org_permissions_pkey;


