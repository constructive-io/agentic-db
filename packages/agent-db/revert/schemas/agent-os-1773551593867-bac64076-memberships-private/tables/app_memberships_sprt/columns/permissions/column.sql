-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/app_memberships_sprt/columns/permissions/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-private".app_memberships_sprt 
  DROP COLUMN permissions RESTRICT;


