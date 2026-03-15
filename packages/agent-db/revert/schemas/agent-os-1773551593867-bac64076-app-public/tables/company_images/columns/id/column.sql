-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_images/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_images 
  DROP COLUMN id RESTRICT;


