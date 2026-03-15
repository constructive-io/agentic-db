-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/updated_at/alterations/alt0000003026
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/updated_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".documents 
    ALTER COLUMN updated_at SET DEFAULT now();

