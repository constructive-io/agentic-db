-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/columns/prefix/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".membership_types 
  DROP COLUMN prefix RESTRICT;


