-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_membership_defaults/columns/created_at/alterations/alt0000001680


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_membership_defaults 
  ALTER COLUMN created_at DROP DEFAULT;


