-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/columns/description/alterations/alt0000000020


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".membership_types 
  ALTER COLUMN description DROP NOT NULL;


