-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_membership_defaults/columns/updated_at/alterations/alt0000000072


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_membership_defaults 
  ALTER COLUMN updated_at DROP DEFAULT;


