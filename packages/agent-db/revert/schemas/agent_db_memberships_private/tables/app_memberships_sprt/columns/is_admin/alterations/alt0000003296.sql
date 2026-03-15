-- Revert: schemas/agent_db_memberships_private/tables/app_memberships_sprt/columns/is_admin/alterations/alt0000003296


ALTER TABLE "agent_db_memberships_private".app_memberships_sprt 
  ALTER COLUMN is_admin DROP NOT NULL;


