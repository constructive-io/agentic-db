-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_membership_defaults/columns/updated_by/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_membership_defaults 
  DROP COLUMN updated_by RESTRICT;


