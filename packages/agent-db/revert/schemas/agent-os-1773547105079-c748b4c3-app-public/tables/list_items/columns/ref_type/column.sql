-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/columns/ref_type/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".list_items 
  DROP COLUMN ref_type RESTRICT;


