-- Revert: schemas/agent_db_permissions_public/tables/app_permissions/columns/bitnum/alterations/alt0000003248


ALTER TABLE "agent_db_permissions_public".app_permissions 
  DROP CONSTRAINT app_permissions_bitnum_chk;


