-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/constraints/companies_main_image_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".companies 
  DROP CONSTRAINT companies_main_image_id_fkey;


