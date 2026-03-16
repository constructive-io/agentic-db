-- Revert: schemas/agent_db_permissions_public/tables/org_permissions/columns/bitnum/alterations/alt0000001130


ALTER TABLE "agent_db_permissions_public".org_permissions 
  DROP CONSTRAINT org_permissions_bitnum_chk;


