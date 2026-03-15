-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/constraints/contacts_main_image_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_links/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contacts 
  ADD CONSTRAINT contacts_main_image_id_fkey 
    FOREIGN KEY(main_image_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-app-public".images (id) 
    ON DELETE SET NULL;

