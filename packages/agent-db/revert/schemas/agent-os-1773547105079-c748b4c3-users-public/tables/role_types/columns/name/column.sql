-- Revert: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/role_types/columns/name/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-users-public".role_types 
  DROP COLUMN name RESTRICT;


