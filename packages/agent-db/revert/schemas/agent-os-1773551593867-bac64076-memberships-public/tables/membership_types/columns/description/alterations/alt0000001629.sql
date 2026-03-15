-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/membership_types/columns/description/alterations/alt0000001629


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".membership_types 
  ALTER COLUMN description DROP NOT NULL;


