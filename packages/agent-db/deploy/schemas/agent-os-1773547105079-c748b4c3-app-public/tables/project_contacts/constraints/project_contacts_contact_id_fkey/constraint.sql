-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/project_contacts/constraints/project_contacts_contact_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/project_contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/constraints/milestones_project_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".project_contacts 
  ADD CONSTRAINT project_contacts_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-app-public".projects (id) 
    ON DELETE CASCADE;

