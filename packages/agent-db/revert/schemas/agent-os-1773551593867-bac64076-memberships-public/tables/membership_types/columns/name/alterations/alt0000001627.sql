-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/membership_types/columns/name/alterations/alt0000001627


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".membership_types 
  ALTER COLUMN name DROP NOT NULL;


