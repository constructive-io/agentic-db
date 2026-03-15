-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/companies/constraints/companies_main_image_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/companies/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/constraints/contacts_main_image_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".companies 
  ADD CONSTRAINT companies_main_image_id_fkey 
    FOREIGN KEY(main_image_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-app-public".images (id) 
    ON DELETE SET NULL;

