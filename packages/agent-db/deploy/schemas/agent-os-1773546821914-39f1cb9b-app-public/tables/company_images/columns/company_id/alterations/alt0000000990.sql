-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_images/columns/company_id/alterations/alt0000000990
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_images/columns/company_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_images 
  ALTER COLUMN company_id SET NOT NULL;

