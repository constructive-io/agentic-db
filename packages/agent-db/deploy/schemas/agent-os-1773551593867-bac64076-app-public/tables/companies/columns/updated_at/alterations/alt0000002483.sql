-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/columns/updated_at/alterations/alt0000002483
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/columns/updated_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".companies 
    ALTER COLUMN updated_at SET DEFAULT now();

