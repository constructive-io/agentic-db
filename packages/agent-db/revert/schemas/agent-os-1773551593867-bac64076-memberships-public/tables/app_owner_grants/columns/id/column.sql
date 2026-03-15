-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_owner_grants/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_owner_grants 
  DROP COLUMN id RESTRICT;


