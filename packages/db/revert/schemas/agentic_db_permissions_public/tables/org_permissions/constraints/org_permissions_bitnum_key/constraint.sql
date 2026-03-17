-- Revert: schemas/agentic_db_permissions_public/tables/org_permissions/constraints/org_permissions_bitnum_key/constraint


ALTER TABLE "agentic_db_permissions_public".org_permissions 
  DROP CONSTRAINT org_permissions_bitnum_key;


