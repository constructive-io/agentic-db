-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/updated_at/alterations/alt0000001675


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
  ALTER COLUMN updated_at DROP DEFAULT;


