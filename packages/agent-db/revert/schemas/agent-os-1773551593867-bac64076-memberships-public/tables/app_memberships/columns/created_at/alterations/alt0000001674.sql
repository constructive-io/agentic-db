-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/created_at/alterations/alt0000001674


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
  ALTER COLUMN created_at DROP DEFAULT;


