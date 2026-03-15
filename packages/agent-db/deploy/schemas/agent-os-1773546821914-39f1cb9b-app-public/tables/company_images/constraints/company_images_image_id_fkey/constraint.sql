-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_images/constraints/company_images_image_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_images 
  ADD CONSTRAINT company_images_image_id_fkey 
    FOREIGN KEY(image_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".images (id) 
    ON DELETE CASCADE;

