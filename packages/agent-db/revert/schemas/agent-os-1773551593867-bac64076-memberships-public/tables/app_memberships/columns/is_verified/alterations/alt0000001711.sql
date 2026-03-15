-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/is_verified/alterations/alt0000001711


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
  ALTER COLUMN is_verified DROP NOT NULL;


