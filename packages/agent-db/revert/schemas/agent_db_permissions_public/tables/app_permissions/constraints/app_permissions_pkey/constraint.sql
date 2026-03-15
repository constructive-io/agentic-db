-- Revert: schemas/agent_db_permissions_public/tables/app_permissions/constraints/app_permissions_pkey/constraint


ALTER TABLE "agent_db_permissions_public".app_permissions 
  DROP CONSTRAINT app_permissions_pkey;


