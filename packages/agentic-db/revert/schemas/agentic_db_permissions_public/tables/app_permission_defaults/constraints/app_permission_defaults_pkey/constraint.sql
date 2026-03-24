-- Revert: schemas/agentic_db_permissions_public/tables/app_permission_defaults/constraints/app_permission_defaults_pkey/constraint


ALTER TABLE "agentic_db_permissions_public".app_permission_defaults 
  DROP CONSTRAINT app_permission_defaults_pkey;


