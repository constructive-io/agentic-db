-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/constraints/contact_links_contact_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/constraints/interactions_contact_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_links 
  ADD CONSTRAINT contact_links_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".contacts (id) 
    ON DELETE CASCADE;

