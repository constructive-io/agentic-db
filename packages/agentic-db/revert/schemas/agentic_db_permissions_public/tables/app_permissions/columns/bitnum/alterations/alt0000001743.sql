-- Revert: schemas/agentic_db_permissions_public/tables/app_permissions/columns/bitnum/alterations/alt0000001743


ALTER TABLE agentic_db_permissions_public.app_permissions 
  DROP CONSTRAINT app_permissions_bitnum_chk;


