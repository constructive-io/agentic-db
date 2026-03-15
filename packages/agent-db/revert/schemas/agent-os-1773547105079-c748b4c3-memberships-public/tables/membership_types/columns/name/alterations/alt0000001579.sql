-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/columns/name/alterations/alt0000001579


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".membership_types 
  ALTER COLUMN name DROP NOT NULL;


