-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_owner_grants/columns/created_at/alterations/alt0000001753


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_owner_grants 
  ALTER COLUMN created_at DROP DEFAULT;


