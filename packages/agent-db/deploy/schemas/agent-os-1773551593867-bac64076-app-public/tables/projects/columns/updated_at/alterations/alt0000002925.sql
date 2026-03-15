-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/updated_at/alterations/alt0000002925
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/updated_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".projects 
    ALTER COLUMN updated_at SET DEFAULT now();

