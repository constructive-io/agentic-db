-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_images/constraints/company_images_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_images 
  DROP CONSTRAINT company_images_entity_id_fkey;


