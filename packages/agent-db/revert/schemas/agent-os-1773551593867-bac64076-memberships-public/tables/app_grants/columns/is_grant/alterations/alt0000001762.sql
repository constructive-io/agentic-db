-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_grants/columns/is_grant/alterations/alt0000001762


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


