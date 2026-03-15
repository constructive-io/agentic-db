-- Revert: schemas/agent_db_memberships_private/tables/app_memberships_sprt/columns/permissions/alterations/alt0000003299


ALTER TABLE "agent_db_memberships_private".app_memberships_sprt 
  ALTER COLUMN permissions DROP NOT NULL;


