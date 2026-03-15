-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/columns/description/alterations/alt0000001581


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".membership_types 
  ALTER COLUMN description DROP NOT NULL;


