-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_admin_grants/columns/is_grant/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_admin_grants 
  DROP COLUMN is_grant RESTRICT;


