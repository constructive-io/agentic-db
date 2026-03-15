-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_admin_grants/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_admin_grants 
  DROP COLUMN id RESTRICT;


