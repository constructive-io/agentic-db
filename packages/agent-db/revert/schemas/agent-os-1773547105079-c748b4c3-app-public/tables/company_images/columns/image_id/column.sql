-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_images/columns/image_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_images 
  DROP COLUMN image_id RESTRICT;


