-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_membership_defaults/columns/is_verified/alterations/alt0000000089


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_membership_defaults 
  ALTER COLUMN is_verified DROP NOT NULL;


