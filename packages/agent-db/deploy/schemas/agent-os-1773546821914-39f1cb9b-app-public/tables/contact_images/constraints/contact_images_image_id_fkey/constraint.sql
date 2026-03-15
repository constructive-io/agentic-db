-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_images/constraints/contact_images_image_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/constraints/venues_main_image_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_images 
  ADD CONSTRAINT contact_images_image_id_fkey 
    FOREIGN KEY(image_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".images (id) 
    ON DELETE CASCADE;

