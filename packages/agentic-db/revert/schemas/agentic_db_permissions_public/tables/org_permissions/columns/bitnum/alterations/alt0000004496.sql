-- Revert: schemas/agentic_db_permissions_public/tables/org_permissions/columns/bitnum/alterations/alt0000004496


ALTER TABLE agentic_db_permissions_public.org_permissions 
  DROP CONSTRAINT org_permissions_bitnum_chk;


