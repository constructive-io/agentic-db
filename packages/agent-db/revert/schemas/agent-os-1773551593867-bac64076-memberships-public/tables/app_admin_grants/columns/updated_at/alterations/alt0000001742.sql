-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_admin_grants/columns/updated_at/alterations/alt0000001742


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_admin_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


