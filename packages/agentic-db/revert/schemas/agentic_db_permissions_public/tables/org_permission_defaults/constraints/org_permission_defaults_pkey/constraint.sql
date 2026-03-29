-- Revert: schemas/agentic_db_permissions_public/tables/org_permission_defaults/constraints/org_permission_defaults_pkey/constraint


ALTER TABLE agentic_db_permissions_public.org_permission_defaults 
  DROP CONSTRAINT org_permission_defaults_pkey;


