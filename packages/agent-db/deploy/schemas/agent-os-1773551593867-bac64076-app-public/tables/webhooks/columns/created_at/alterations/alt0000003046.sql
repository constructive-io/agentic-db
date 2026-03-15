-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/created_at/alterations/alt0000003046
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/created_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".webhooks 
    ALTER COLUMN created_at SET DEFAULT now();

