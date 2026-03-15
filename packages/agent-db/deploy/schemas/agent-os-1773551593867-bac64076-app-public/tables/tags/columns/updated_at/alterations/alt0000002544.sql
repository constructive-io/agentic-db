-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/columns/updated_at/alterations/alt0000002544
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/columns/updated_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tags 
    ALTER COLUMN updated_at SET DEFAULT now();

