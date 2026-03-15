-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_images/constraints/company_images_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_images 
  DROP CONSTRAINT company_images_entity_id_fkey;


