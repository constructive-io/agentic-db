-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_images/constraints/company_images_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".company_images 
  DROP CONSTRAINT company_images_entity_id_fkey;


