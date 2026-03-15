-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_membership_defaults/columns/is_approved/alterations/alt0000001695


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_membership_defaults 
  ALTER COLUMN is_approved DROP NOT NULL;


