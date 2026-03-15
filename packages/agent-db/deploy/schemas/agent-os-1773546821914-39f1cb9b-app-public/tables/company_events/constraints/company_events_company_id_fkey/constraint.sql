-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/constraints/company_events_company_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_events 
  ADD CONSTRAINT company_events_company_id_fkey 
    FOREIGN KEY(company_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".companies (id) 
    ON DELETE CASCADE;

