-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_owner_grants/columns/updated_at/alterations/alt0000001754


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_owner_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


