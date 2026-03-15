-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/permissions/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
  DROP COLUMN permissions RESTRICT;


