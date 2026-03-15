-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/membership_types/columns/description/alterations/alt0000000020


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".membership_types 
  ALTER COLUMN description DROP NOT NULL;


