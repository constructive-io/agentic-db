-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_grants/columns/created_at/alterations/alt0000001768


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_grants 
  ALTER COLUMN created_at DROP DEFAULT;


